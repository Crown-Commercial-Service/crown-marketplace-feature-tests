require 'json'
require 'net/http'

module BrowserStackHelpers
  def browserstack_session_id
    return nil unless defined?(Capybara) && Capybara.current_session

    driver = Capybara.current_session.driver
    return nil unless driver.is_a?(Capybara::Selenium::Driver)

    browser = driver.browser

    session_id_from_executor_script(browser) ||
      session_id_from_driver_methods(browser) ||
      session_id_from_capabilities(browser)
  rescue StandardError => e
    puts "Error getting session ID: #{e.message}"
    nil
  end

  def session_id_from_executor_script(browser)
    return nil unless browser.respond_to?(:execute_script)

    result = browser.execute_script('browserstack_executor: {"action": "getSessionDetails"}')
    return nil unless result && !result.empty?

    session_details = JSON.parse(result)
    session_details['hashed_id']
  rescue StandardError
    nil
  end

  def session_id_from_driver_methods(browser)
    browser.session_id if browser.respond_to?(:session_id)
  end

  def session_id_from_capabilities(browser)
    return nil unless browser.respond_to?(:capabilities)

    caps = browser.capabilities
    return nil unless caps.respond_to?(:[])

    caps['webdriver.remote.sessionid'] ||
      caps[:webdriver_remote_sessionid] ||
      caps['sessionId'] ||
      caps[:session_id]
  end

  def update_browserstack_status(session_id, scenario)
    return unless session_id && CONFIG['user'] && CONFIG['key']

    status = scenario.passed? ? 'passed' : 'failed'
    reason = status_reason(status, scenario)

    update_session(session_id, status, reason)
  end

  def status_reason(status, scenario)
    if status == 'passed'
      "#{scenario.name} Passed."
    else
      error_message = if scenario.respond_to?(:exception) && scenario.exception
                        scenario.exception.message.to_s
                      else
                        'Test failed'
                      end
      "#{scenario.name} Failed. Error: #{error_message}"
    end
  end

  def update_session(session_id, status, reason)
    uri = URI.parse("https://api.browserstack.com/automate/sessions/#{session_id}.json")
    request = Net::HTTP::Put.new(uri)
    request.basic_auth(CONFIG['user'], CONFIG['key'])
    request.content_type = 'application/json'

    request.body = JSON.dump({
                               'status' => status,
                               'reason' => reason
                             })

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
      http.request(request)
    end

    if response.code == '200'
      puts "Successfully updated BrowserStack session status to #{status}"
    else
      puts "Failed to update BrowserStack status: #{response.code} - #{response.body}"
    end
  rescue StandardError => e
    puts "Error updating BrowserStack status: #{e.message}"
  end

  def force_browser_restart
    return false unless defined?(Capybara) && Capybara.current_session

    current_driver = Capybara.current_session.driver
    return false unless current_driver.is_a?(Capybara::Selenium::Driver)

    begin
      current_driver.quit
      Capybara.reset_sessions!
      Capybara.current_session.driver.browser
      true
    rescue StandardError => e
      puts "Error restarting browser: #{e.message}"
      false
    end
  end

  def configure_browserstack_test_name(name)
    return unless defined?(Capybara) &&
                  Capybara.current_session &&
                  Capybara.current_session.driver.is_a?(Capybara::Selenium::Driver)

    browser = Capybara.current_session.driver.browser

    return unless browser.respond_to?(:execute_script)

    browser.execute_script("browserstack_executor: {\"action\": \"setSessionName\", \"arguments\": {\"name\": \"#{name}\"}}")
    puts "Set BrowserStack test name to: #{name}"
  rescue StandardError => e
    puts "Error setting test name in BrowserStack: #{e.message}"
  end
end
