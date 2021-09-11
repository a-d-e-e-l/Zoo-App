class AnimalFood < ApplicationRecord
  validates_uniqueness_of :food_id, :scope => :animal_id

  belongs_to :animal
  belongs_to :food
end
