class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :password))

    @user.save
    redirect_to @user
  end
end

private
  def user_params
    params.require(:user).permit(:email, :password)
  end