class HallsController < ApplicationController
  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @halls = @user.halls 
    else
      @halls = Hall.all
    end
  end
end