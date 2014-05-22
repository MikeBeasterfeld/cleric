class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :subdomain_view_path
  
  def subdomain_view_path
    prepend_view_path "app/views/#{ENV['SITENAME']}" if ENV['SITENAME'].present?
  end  
end
