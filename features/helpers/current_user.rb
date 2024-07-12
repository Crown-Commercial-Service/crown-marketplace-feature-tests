class CurrentUser
  attr_reader :email, :password

  def initialize(role)
    formatted_role = role.upcase

    @email = ENV.fetch("#{formatted_role}_EMAIL")
    @password = ENV.fetch("#{formatted_role}_PASSWORD")
  end
end

def current_user(role: 'buyer')
  @current_user ||= CurrentUser.new(role)
end
