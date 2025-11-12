class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic_auth

  def index
  end

  def show
    
  end

  def destroy
    
  end
  
  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'samurai' && password == '5589'
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname])
  end
end
