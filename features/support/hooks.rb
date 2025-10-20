# frozen_string_literal: true

Before do |scenario|
  %w[facilities_management legal_panel_for_government legal_services management_consultancy supply_teachers].each do |service|
    if scenario.location.file.include? service
      @service = service
      break
    end
  end

  %w[rm6187 rm6232 rm6238 rm6240 rm6309 rm6360].each do |framework|
    if scenario.location.file.include? framework
      @framework = framework.upcase
      break
    end
  end
end

Before do
  # Make sure we only run test for frameworks that are live in the environment
  skip_this_scenario if (@service && ENV['LIVE_SERVICES'].exclude?(@service)) || (@framework && ENV['LIVE_FRAMEWORKS'].exclude?(@framework))
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
