class ParksController < ApplicationController
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
  end

  def bookmarks
    @bookmarks_boards = current_user.bookmark_boards.includes(:user).order(created_at: :desc)#後で定義する
  end


  private

  def park_params
    params.require(:park).permit(:name, :description, :address, :prefecture_id)
  end

end
