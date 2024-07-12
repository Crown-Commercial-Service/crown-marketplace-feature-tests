require 'yaml'
require_relative 'errors'

module ConfigHelper
  class << self
    def get_config(env)
      config_filename = "config/environment.#{env}.yml"

      raise MissingConfigFileError, config_filename unless File.file?(config_filename)

      YAML.load_file('config/environment.shared.yml')[env].merge(YAML.load_file("config/environment.#{env}.yml"))
    end
  end
end
