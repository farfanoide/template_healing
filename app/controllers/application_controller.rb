class ApplicationController < ActionController::Base
  before_filter :fetch_pages, :set_locale
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
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
