class ApplicationController < ActionController::Base
  before_filter :fetch_pages, :set_locale
  protect_from_forgery with: :exception

  add_flash_types :error

  private

  def authorize
    redirect_to :root, error: t('users.not_authorized') unless current_user
  end

  def current_user_id
    session[:user_id]
  end

  def current_user
    @current_user ||= User.find(current_user_id) if current_user_id
  end

  def fetch_pages
    @pages = Page.all
  end

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end

  helper_method :current_user
end
