class ApplicationController < ActionController::Base
  before_filter :fetch_pages, :set_locale
  protect_from_forgery with: :exception

  private

  def fetch_pages
    @pages = Page.all
  end

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end

end
