class AddRoomRefToStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :stations, :room, foreign_key: true
  end
end
