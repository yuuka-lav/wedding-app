class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(hall_id: @hall.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(hall_id: @hall.id)
    like.destroy
  end

  private

  def set_variables
    @hall = Hall.find(params[:hall_id])
    @id_name = "#like-link-#{@hall.id}"
    @id_heart = "#heart-#{@hall.id}"
  end

end