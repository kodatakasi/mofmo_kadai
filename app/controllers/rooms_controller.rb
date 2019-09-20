class RoomsController < ApplicationController
  before_action :set_room, only: %i(show edit update destroy)

  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = Room.new
    @room.build_station
  end

  def edit
  end

  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: '物件情報登録しました' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: '物件情報編集しました' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: '物件情報削除しました' }
      format.json { head :no_content }
    end
  end

  private
  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :price, :age, :address, :remarks, station_attributes: [:route1, :station1, :walking1, :route2, :station2, :walking2])
  end
end
