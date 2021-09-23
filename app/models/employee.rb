class Employee < ApplicationRecord
  has_many :animals

  accepts_nested_attributes_for :animals
end
