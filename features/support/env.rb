# frozen_string_literal: true

require 'cucumber/rspec/doubles'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'

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

  raise MissingCredentialsError, { role:, index: } unless crednetials

  ENV["#{role.upcase}_EMAIL"]     ||= crednetials['email']
  ENV["#{role.upcase}_PASSWORD"]  ||= crednetials['password']
end

ENV['TEST_RUN_ID'] = SecureRandom.uuid

ENV['LIVE_SERVICES'] = config['live_services'].map { |service| service['service'] }.join(',')
ENV['LIVE_FRAMEWORKS'] = config['live_services'].map { |service| service['frameworks'] }.flatten.join(',')

# Set the Capybara config
Capybara.app_host = config['host']

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Firefox::Options.new

  options.add_argument('-headless') if ENV.fetch('HEADLESS', 'true') == 'true'

  options.add_preference('browser.download.folderList', 2)
  options.add_preference('browser.download.dir', DownloadHelpers.download_path)

  Capybara::Selenium::Driver.new(app, browser: :firefox, options:)
end

Capybara.default_driver = :selenium

Capybara.ignore_hidden_elements = false
