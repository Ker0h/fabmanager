class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar, :avatar_cache, :remove_avatar, :first_name, :surname, :date_of_birth, :gender, :country, :province, :city])
    devise_parameter_sanitizer.permit(:edit, keys: [:username, :avatar, :avatar_cache, :remove_avatar, :first_name, :surname, :date_of_birth, :gender, :country, :province, :city])
  end
end
