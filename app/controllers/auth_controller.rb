class AuthController < ApplicationController

  def login
  end

  def verify
    byebug
    @user = User.find_by(username: params[:username])
    session[:user_id] = @user.id
    if @user && @user.email == params[:email] #&& @user.authenticate(params[:password])
      redirect_to @user
    else
      flash[:message] = "Invalid login credentials, please try again or create a new account!"
      render :login
    end
  end

  def logout
    session.clear
    redirect_to login_path
  end

  def current_user
    if logged_in?
      User.find(session[:user_id])
    end
  end

end
