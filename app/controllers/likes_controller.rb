class LikesController < ApplicationController
  
  def create
    @like = Like.create(user_id: current_user.id, hall_id: params[:hall_id])
    @likes = Like.where(hall_id: params[:hall_id])
    @halls = Hall.all
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, hall_id: params[:hall_id])
    @like.destroy
    @likes = Like.where(hall_id: params[:hall_id])
    @halls = Hall.all
  end

end
