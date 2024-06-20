class ParksController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :ensure_guest_user, except: [:index, :show]

  def new
    @park = Park.new
  end

  def create
    @park = Park.new(park_params)
    @park.user_id = current_user.id
    if @park.save
      redirect_to @park
    else
      render :new
    end

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

  def ensure_guest_user

    if current_user.email == "guest@example.com"
      redirect_to root_path
    end
  end

end
