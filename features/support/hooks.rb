# frozen_string_literal: true

Before do |scenario|
  %w[rm6187 rm6232 rm6238 rm6240 rm6309].each do |framework|
    if scenario.location.file.include? framework
      @framework = framework.upcase
      break
    end
  end
end

Before do
  # We only what the tests to run if RM6309 is live which wont be until later
  skip_this_scenario if @framework == 'RM6309' && ['local', 'cmpdev'].exclude?(ENV.fetch('TEST_ENV', 'local'))
end

Before('@mobile') do
  resize_window_to_mobile
end

After('@mobile') do
  resize_window_to_pc
end

Before('@file-download') do
  DownloadHelpers.clear_downloads
end

After('@file-download') do
  DownloadHelpers.clear_downloads
end
