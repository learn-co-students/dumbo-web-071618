class SessionsController < ApplicationController
  def new
  end

  def create
    # Find the user
    @user = User.find_by(username: params[:username])
    byebug
    # Making sure they are who they say they are
    if @user && @user.authenticate(params[:password])
      # if the user ***is*** found
      session[:user_id] = @user.id
      redirect_to ice_creams_path
    else
      # If the user isn't found
      redirect_to login_path
    end
  end


  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end
