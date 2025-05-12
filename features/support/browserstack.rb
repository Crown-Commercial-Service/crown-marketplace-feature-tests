# monkey patch to avoid reset sessions
class Capybara::Selenium::Driver < Capybara::Driver::Base
  def reset!
    @browser.navigate&.to('about:blank')
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
  CONFIG['common_caps']['browserstack.local'] = ENV['BROWSERSTACK_LOCAL'] == 'true' if ENV.key?('BROWSERSTACK_LOCAL')
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
    'key' => CONFIG['key'],
    'forcelocal' => true,
    'onlyAutomate' => true,
    'v' => true,
    'force' => true
  }

  bs_local.start(bs_local_args)
end

at_exit do
  if defined?(bs_local) && bs_local
    puts 'Stopping BrowserStack Local...'
    bs_local.stop
  end
end

Capybara.ignore_hidden_elements = false
