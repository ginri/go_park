class UsersController < ApplicationController
  def index
    # 一覧表示の処理を追加
    @users = User.all
  end

  def show
    # 詳細表示の処理を追加
    @user = User.find(params[:id])

  end

  def edit
    # 編集画面の処理を追加
    @user = User.find(params[:id])
  end

  def update
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
    params.require(:user).permit(:email, :name)
  end
end