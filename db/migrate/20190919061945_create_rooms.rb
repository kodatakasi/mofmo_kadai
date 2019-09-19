class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :price
      t.integer :age
      t.text :address
      t.text :remarks

      t.timestamps
    end
  end
end
