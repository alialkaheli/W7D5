class ApplicationController < ActionController::Base

  helper_method :current_user, :is_logged_in?

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  
end
