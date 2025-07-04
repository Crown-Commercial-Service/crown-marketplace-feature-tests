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
  # Make sure we only run test for frameworks that are live in the environment
  skip_this_scenario if @framework && ENV['LIVE_FRAMEWORKS'].exclude?(@framework)
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
