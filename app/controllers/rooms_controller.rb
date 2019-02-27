class RoomsController < ApplicationController
  def item_create
  end

  def item_destroy
  end

  def show
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id
    @room.save
    redirect_to user_path(current_user.id)
  end

  private
  def room_params
    params.require(:room).permit(
     :room_name, :room_image)
  end
end

