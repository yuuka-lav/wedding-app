class HallsController < ApplicationController
  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @halls = @user.halls 
    else
      @halls = Hall.all
    end
    @all_ranks = Hall.find(Like.group(:hall_id).order('count(hall_id) desc').limit(3).pluck(:hall_id))
  end
end