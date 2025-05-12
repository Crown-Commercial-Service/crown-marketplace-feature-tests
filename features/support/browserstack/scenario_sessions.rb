require 'singleton'

class ScenarioSessions
  include Singleton

  def initialize
    @sessions = {}
  end

  def store_session(scenario_id, session_id)
    @sessions[scenario_id] = session_id
  end

  def retrieve_session(scenario_id)
    @sessions[scenario_id]
  end

  def delete(scenario_id)
    @sessions.delete(scenario_id)
  end
end
