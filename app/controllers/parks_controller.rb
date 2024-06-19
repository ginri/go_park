class ParksController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def new
    @park = Park.new
  end

  def create
    park = Park.new(park_params)
    park.save
    redirect_to park
  end


  def index
    @prefecture = Prefecture.find(params[:prefecture_id])
    @parks = @prefecture.parks
  end

  def show
    @park = Park.find(params[:id])
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    park = Park.find(params[:id])
    park.update(park_params)
    redirect_to park_path(park.id)
  end

  def bookmarks
    @bookmarks_boards = current_user.bookmark_boards.includes(:user).order(created_at: :desc)#後で定義する
  end

  def destroy
    park = Park.find(params[:id])
    park.destroy
    redirect_to user_path(current_user)
  end


  private

  def park_params
    params.require(:park).permit(:name, :description, :address, :prefecture_id, :image)
  end

end
