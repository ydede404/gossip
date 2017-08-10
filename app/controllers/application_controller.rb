class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :sanitize_devise_parameter, if: :devise_controller?

def sanitize_devise_parameter
  devise_parameter_sanitizer.permit(:sign_up, keys: [:anonymous_username])
end

end
