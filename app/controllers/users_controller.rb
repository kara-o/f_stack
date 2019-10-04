class UsersController < ApplicationController
  before_action :set_user, only: :show
  layout 'login', only: :new

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "Account successfully created!"
      redirect_to login_path
    else
      flash[:message] = @user.errors.full_messages
      redirect_to new_user_path(@user)
    end
  end

  def show
    render layout: 'user_show_page'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
