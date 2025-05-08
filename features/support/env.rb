require 'cucumber/rspec/doubles'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'allure-cucumber'
require 'browserstack/local'

ENV['SITEPRISM_DSL_VALIDATION_DISABLED'] = 'true'
require 'site_prism'

if ENV.fetch('CUCUMBER_ACCESSIBILITY', nil)
require 'axe-capybara'
require 'axe-cucumber-steps'
end

require 'byebug'
require 'active_support/all'

# Include our utilities
require_relative '../../utils/errors'
require_relative '../../utils/config_helper'
require_relative '../support/browserstack'

# Allows us to use site prism in our tests
require_relative '../support/pages'

World(Pages)

# Set the time zone
Time.zone = 'London'

# We can set the config from the environments.<ENV>.yml file
config = ConfigHelper.get_config(ENV.fetch('TEST_ENV', 'local'))

test_number = (ENV.fetch('TEST_ENV_NUMBER', '').blank? ? '1' : ENV.fetch('TEST_ENV_NUMBER')).to_i - 1

[
['buyer', test_number],
['admin', test_number],
['no_details', 0]
].each do |role, index|
crednetials = config.dig('users', role, index)

raise MissingCredentialsError, { role: role, index: index } unless crednetials

ENV["#{role.upcase}_EMAIL"]     ||= crednetials['email']
ENV["#{role.upcase}_PASSWORD"]  ||= crednetials['password']
end

Capybara.app_host = config['host']

browserstack = ENV.fetch('BROWSERSTACK', 'false') == 'true'
browser = ENV.fetch('BROWSER', 'firefox').to_sym

Capybara.register_driver :selenium do |app|
case browser
  when :firefox
    options = Selenium::WebDriver::Firefox::Options.new
    options.add_argument('-headless') if ENV.fetch('HEADLESS', 'true') == 'true'
    options.add_preference('browser.download.folderList', 2)
    options.add_preference('browser.download.dir', DownloadHelpers.download_path)
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
  when :chrome
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless') if ENV.fetch('HEADLESS', 'true') == 'true'
    options.add_argument('--disable-gpu')
    options.add_argument('--window-size=1920,1080')
    options.add_preference('download.default_directory', DownloadHelpers.download_path)
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
  when :edge
    options = Selenium::WebDriver::Edge::Options.new
    options.add_argument('--headless') if ENV.fetch('HEADLESS', 'true') == 'true'
    options.add_argument('--disable-gpu')
    options.add_argument('--window-size=1920,1080')
    driver_path = File.join(File.dirname(__FILE__), '..', 'drivers', 'msedgedriver')
    Capybara::Selenium::Driver.new(app, browser: :edge, options: options)
  else
    raise "Browser #{browser} is not supported"
  end
end