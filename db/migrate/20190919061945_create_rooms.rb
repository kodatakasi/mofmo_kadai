class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :age, null: false
      t.text :address, null: false
      t.text :remarks

      t.timestamps
    end
  end
end
