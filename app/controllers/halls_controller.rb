class HallsController < ApplicationController
  def index
    @halls = Hall.search(params[:search])
  end
end