class ApplicationController < ActionController::Base
  include TheRoleController
  protect_from_forgery
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def access_denied
    flash[:error] = "Access denied"
    redirect_to(:back)
  end

  alias_method :login_required, :authenticate_user!
  alias_method :role_access_denied, :access_denied

  def task
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :fio, :education, :birth) }
  end
end
