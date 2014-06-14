class ApplicationController < ActionController::Base
  check_authorization :unless => :devise_controller?
  protect_from_forgery with: :exception
  before_filter :subdomain_view_path
  
  def subdomain_view_path
    prepend_view_path "app/views/#{ENV['SITENAME']}" if ENV['SITENAME'].present?
  end

  rescue_from CanCan::AccessDenied do |exception|
    Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect}"
    redirect_to root_url, :alert => exception.message
  end
end
