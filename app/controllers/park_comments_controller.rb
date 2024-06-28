class ParkCommentsController < ApplicationController
  def create
    park = Park.find(params[:park_id])
    comment = current_user.park_comments.new(park_comment_params)
    comment.park_id = park.id
    comment.save
    redirect_to park_path(park)
  end

  private

  def park_comment_params
    params.require(:park_comment).permit(:comment)
  end
end
