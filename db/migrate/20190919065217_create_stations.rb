class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route1, null: false
      t.string :station1, null: false
      t.integer :walking1, null: false
      t.string :route2
      t.string :station2
      t.integer :walking2

      t.timestamps
    end
  end
end
