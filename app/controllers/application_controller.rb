class ApplicationController < ActionController::Base

private
  def require_signin
    unless current_user
      redirect_to new_session_url, notice:"please sign in first!"
    end
  end


  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    current_user == user
  end

  helper_method :current_user
  helper_method :current_user?

end
