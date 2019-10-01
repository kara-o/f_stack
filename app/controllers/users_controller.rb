class UsersController < ApplicationController
  before_action :set_user, only: :show

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "Account successfully created!"
      redirect_to @user
    else
      flash[:message] = @user.errors.full_messages
      redirect_to new_user_path(@user)
    end
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
