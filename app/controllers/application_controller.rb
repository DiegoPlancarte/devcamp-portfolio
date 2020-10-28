class ApplicationController < ActionController::Base
  # Runs specified methods before running anything else, specifies anything related to devise
  before_action :configure_permitted_marameters, if: :devise_controller?

  # Telling devise to allow custom fields on new user registration and user registration edit
  def configure_permitted_marameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end