# monkey patch to avoid reset sessions
class Capybara::Selenium::Driver < Capybara::Driver::Base
  def reset!
    if @browser
      @browser.navigate.to('about:blank')
    end
  end
 end
 
 config_name = ENV['CONFIG_NAME'] || 'browserstack'
 bs_config_path = File.join(File.dirname(__FILE__), "../../config/#{config_name}.config.yml")
 timestamp = Time.now.strftime('%d-%m-%Y_%H:%M')
 CONFIG = YAML.load_file(bs_config_path)
 
 CONFIG['user'] = ENV['BROWSERSTACK_USERNAME'] if ENV['BROWSERSTACK_USERNAME']
 CONFIG['key'] = ENV['BROWSERSTACK_ACCESS_KEY'] if ENV['BROWSERSTACK_ACCESS_KEY']
 CONFIG['common_caps'] ||= {}
 build_name = CONFIG['common_caps']['build']
 CONFIG['common_caps']['build'] = "#{build_name} - #{timestamp}"
 
 if ENV['BROWSERSTACK'] == 'true' && defined?(CONFIG)
   CONFIG['common_caps'] ||= {}
   if ENV.key?('BROWSERSTACK_LOCAL')
     CONFIG['common_caps']['browserstack.local'] = ENV['BROWSERSTACK_LOCAL'] == 'true'
   end
 end
 
 Capybara.register_driver :browserstack do |app|
   browser_config = CONFIG['browser_caps']
   browser_config = browser_config.first if browser_config.is_a?(Array)
 
   caps = Selenium::WebDriver::Remote::Capabilities.new
   
   browser_config.each do |key, value|
     caps[key] = value
   end
   
   if CONFIG['common_caps']
     bstack_options = {}
     bstack_options['buildName'] = CONFIG['common_caps']['build'] if CONFIG['common_caps']['build']
     bstack_options['debug'] = CONFIG['common_caps']['browserstack.debug'] if CONFIG['common_caps']['browserstack.debug']
     bstack_options['local'] = CONFIG['common_caps']['browserstack.local'] if CONFIG['common_caps'].key?('browserstack.local')
     caps['bstack:options'] = bstack_options
   end
  
   Capybara::Selenium::Driver.new(
     app,
     browser: :remote,
     url: "https://#{CONFIG['user']}:#{CONFIG['key']}@#{CONFIG['server']}/wd/hub",
     capabilities: caps
   )
 end
 
 if ENV['BROWSERSTACK'] == 'true'
   Capybara.default_driver = :browserstack
   Capybara.javascript_driver = :browserstack
 else
   browser = ENV.fetch('BROWSER', 'firefox').to_sym
   Capybara.default_driver = :selenium
   Capybara.javascript_driver = :selenium
   puts "Using local Selenium driver with #{browser} browser"
 end 
 
 bs_local = nil
 
 if ENV['BROWSERSTACK'] == 'true' &&
   ((defined?(CONFIG) && CONFIG['common_caps'] && CONFIG['common_caps']['browserstack.local'] && CONFIG['common_caps']['browserstack.local'].to_s == 'true') ||
    ENV['BROWSERSTACK_LOCAL'] == 'true')

   require 'browserstack/local'

   bs_local = BrowserStack::Local.new

   bs_local_args = {
     "key" => CONFIG['key'],
     "forcelocal" => true,  
     "onlyAutomate" => true,
     "v" => true,
     "force" => true
   }

   bs_local.start(bs_local_args)
 end
 
 at_exit do
   if defined?(bs_local) && bs_local
     puts "Stopping BrowserStack Local..."
     bs_local.stop
   end
 end
 
 Capybara.ignore_hidden_elements = false

 if ENV['BROWSERSTACK'] == 'true'
   require 'json'
   require 'net/http'
 

   $scenario_sessions = {}
 
   def get_browserstack_session_id
     if defined?(Capybara) && Capybara.current_session && 
        Capybara.current_session.driver.is_a?(Capybara::Selenium::Driver)
       begin
         driver = Capybara.current_session.driver.browser
         
         if driver.respond_to?(:execute_script)
           result = driver.execute_script('browserstack_executor: {"action": "getSessionDetails"}')
           if result && !result.empty?
             session_details = JSON.parse(result)
             return session_details["hashed_id"] if session_details["hashed_id"]
           end
         end
         
         if driver.respond_to?(:session_id)
           return driver.session_id
         elsif driver.respond_to?(:capabilities)
           caps = driver.capabilities
           if caps.respond_to?(:[])
             return caps['webdriver.remote.sessionid'] ||
                   caps[:webdriver_remote_sessionid] ||
                   caps['sessionId'] ||
                   caps[:session_id]
           end
         end
       rescue => e
         puts "Error getting session ID: #{e.message}"
       end
     end
     return nil
   end
   
   def update_browserstack_status(session_id, scenario)
     return unless session_id && CONFIG['user'] && CONFIG['key']
     
     status = scenario.passed? ? "passed" : "failed"
     reason = if status == "passed"
               "#{scenario.name} Passed."
             else
               error_message = if scenario.respond_to?(:exception) && scenario.exception
                               scenario.exception.message.to_s
                              else
                               "Test failed"
                              end
               "#{scenario.name} Failed. Error: #{error_message}"
             end
     
     begin
       uri = URI.parse("https://api.browserstack.com/automate/sessions/#{session_id}.json")
       request = Net::HTTP::Put.new(uri)
       request.basic_auth(CONFIG['user'], CONFIG['key'])
       request.content_type = "application/json"
       
       request.body = JSON.dump({
         "status" => status,
         "reason" => reason
       })
       
       response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
         http.request(request)
       end
       
       if response.code == "200"
         puts "Successfully updated BrowserStack session status to #{status}"
       else
         puts "Failed to update BrowserStack status: #{response.code} - #{response.body}"
       end
     rescue => e
       puts "Error updating BrowserStack status: #{e.message}"
     end
   end
   
   def force_browser_restart
     if defined?(Capybara) && Capybara.current_session
       begin
         current_driver = Capybara.current_session.driver
         
         if current_driver.is_a?(Capybara::Selenium::Driver)
           current_driver.quit
           
           Capybara.reset_sessions!
           
           Capybara.current_session.driver.browser
           
           return true
         end
       rescue => e
         puts "Error restarting browser: #{e.message}"
       end
     end
     
     puts "Browser restart not needed or failed"
     return false
   end
  
   def set_browserstack_test_name(name)
     return unless defined?(Capybara) &&
                  Capybara.current_session &&
                  Capybara.current_session.driver.is_a?(Capybara::Selenium::Driver)
     
     begin
       browser = Capybara.current_session.driver.browser
       
       if browser.respond_to?(:execute_script)
         browser.execute_script("browserstack_executor: {\"action\": \"setSessionName\", \"arguments\": {\"name\": \"#{name}\"}}")
         puts "Set BrowserStack test name to: #{name}"
         return true
       end
     rescue => e
       puts "Error setting test name in BrowserStack: #{e.message}"
     end
     
     return false
   end
   
   Before do |scenario|
     scenario_id = "#{scenario.object_id}"
     
     force_browser_restart
     
     begin
       visit('about:blank')
     rescue => e
       puts "Error initializing browser: #{e.message}"
     end
     
     timestamp = Time.now.strftime("%H:%M:%S")
     test_name = "#{scenario.name} [#{timestamp}]"
     set_browserstack_test_name(test_name)
     
     session_id = get_browserstack_session_id
     if session_id
       $scenario_sessions[scenario_id] = session_id
     else
       puts "Warning: Could not get session ID at start of scenario"
     end
   end
   
   After do |scenario|
     scenario_id = "#{scenario.object_id}"
     session_id = $scenario_sessions[scenario_id]

     if session_id
       puts "Using stored session ID: #{session_id}"
       update_browserstack_status(session_id, scenario)
       
       $scenario_sessions.delete(scenario_id)
     else
       current_session_id = get_browserstack_session_id
       if current_session_id
         update_browserstack_status(current_session_id, scenario)
       else
         puts "Warning: No session ID available for scenario '#{scenario.name}'"
       end
     end
   end
 end