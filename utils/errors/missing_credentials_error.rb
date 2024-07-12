class MissingCredentialsError < StandardError
  def initialize(error_details)
    super("Could not find credentials for '#{error_details[:role]}' at index #{error_details[:index]}")
  end
end
