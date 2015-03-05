class ApplicationController < ActionController::Base
  check_authorization :unless => :devise_controller?
  protect_from_forgery with: :exception
  before_filter :google_analytics

  def google_analytics
    @google_analytics_code = ENV['google_analytics_code']
  end

  rescue_from CanCan::AccessDenied do |exception|
    Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect}"
    redirect_to root_url, :alert => exception.message
  end
end
