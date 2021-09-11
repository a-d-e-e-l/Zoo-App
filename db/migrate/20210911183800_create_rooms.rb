class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :area
      t.string :room_type
      t.text :description

      t.timestamps
    end
  end
end
