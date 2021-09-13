class AddMorIndoInAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :room_id, :integer
    add_column :animals, :employee_id, :integer
  end
end
