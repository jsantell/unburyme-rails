class ApplicationController < ActionController::Base
  protect_from_forgery
  layout Proc.new { |controller| controller.request.xhr? ? false : 'main' }

  private
  def current_user
    @current_user ||= logged_in? ? User.find(session[:user_id]) :nil
  end

  def logged_in?
    !!session[:user_id]
  end

  helper_method :current_user, :logged_in?, :log_in_notification
end
