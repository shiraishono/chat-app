class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    # 必要に応じてここに何かの処理を記述する
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end