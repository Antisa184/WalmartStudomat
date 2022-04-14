class ApplicationController < ActionController::Base
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_type])
  end
end
