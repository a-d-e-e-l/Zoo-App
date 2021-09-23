class AddMorInfoInEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :animal_id, :integer
  end
end
