class UsersController < ApplicationController
  def index

    @users = User.all
  end

  def show
  @user = User.find(params[:id])
    if @user.nil?
      flash[:error] = "ユーザーが見つかりません"
      redirect_to users_path
    end
  end

  def edit
      user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to users_path
    end

    @user = User.find(params[:id])
  end

  def update
      user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to users_path
    end

    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def destroy
    current_user.destroy
    reset_session
    redirect_to new_user_registration_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :image)
  end
end