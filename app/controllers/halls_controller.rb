class HallsController < ApplicationController
  def index
    @hall = Hall.all
  end
end
