class AuthController < ApplicationController

  def login
    render layout: 'login'
  end

  def verify
    @user = User.find_by(username: params[:username])
    if @user && @user.email == params[:email] #&& @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:message] = "Invalid login credentials, please try again or create a new account!"
      redirect_to login_path
    end
  end

  def logout
    session.clear
    redirect_to login_path
  end

end
