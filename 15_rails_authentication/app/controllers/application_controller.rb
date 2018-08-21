class ApplicationController < ActionController::Base
  helper_method :is_loggedin?, :current_user

  def current_user
    # I will check against the sessions' current user
    # and set it to this instance variable
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def is_loggedin?
    # True or false
    !!current_user
  end

  def authorized
    redirect_to login_path unless session[:user_id]
  end
end
