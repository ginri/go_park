class MyPagesController < ApplicationController
  def index
  end

  def show
    @park = Park.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end