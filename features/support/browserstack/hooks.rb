require_relative 'scenario_sessions'
require_relative 'helpers'

if ENV['BROWSERSTACK'] == 'true'

  World(BrowserStackHelpers)

  Before do |scenario|
    scenario_id = scenario.object_id.to_s

    force_browser_restart

    begin
      visit('about:blank')
    rescue StandardError => e
      puts "Error initializing browser: #{e.message}"
    end

    timestamp = Time.now.strftime('%H:%M:%S')
    test_name = "#{scenario.name} [#{timestamp}]"
    configure_browserstack_test_name(test_name)

    session_id = browserstack_session_id
    if session_id
      ScenarioSessions.instance.store_session(scenario_id, session_id)
    else
      puts 'Warning: Could not get session ID at start of scenario'
    end
  end

  After do |scenario|
    scenario_id = scenario.object_id.to_s
    session_id = ScenarioSessions.instance.retrieve_session(scenario_id)

    if session_id
      puts "Using stored session ID: #{session_id}"
      update_browserstack_status(session_id, scenario)

      ScenarioSessions.instance.delete(scenario_id)
    else
      current_session_id = browserstack_session_id
      if current_session_id
        update_browserstack_status(current_session_id, scenario)
      else
        puts "Warning: No session ID available for scenario '#{scenario.name}'"
      end
    end
  end
end
