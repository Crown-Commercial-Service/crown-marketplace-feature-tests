class MissingConfigFileError < StandardError
  def initialize(missing_file_name)
    super("Could not find config file with name: '#{missing_file_name}'")
  end
end
