class Food < ApplicationRecord
  has_many :animal_foods
  has_many :animals, through: :animal_foods
end
