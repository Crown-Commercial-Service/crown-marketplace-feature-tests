class CurrentUser
  attr_reader :email, :password

  def initialize(role, service)
    formatted_role = role.upcase
    formatted_service = service.upcase.gsub(' ', '_')

    @email = ENV.fetch("#{formatted_role}_EMAIL_#{formatted_service}")
    @password = ENV.fetch("#{formatted_role}_PASSWORD_#{formatted_service}")
  end
end

def current_user(service, role = 'buyer')
  @current_user ||= CurrentUser.new(role, service)
end
