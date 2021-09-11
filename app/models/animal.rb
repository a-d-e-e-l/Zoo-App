class Animal < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :room, optional: true # 1- m
  has_many :animal_foods
  has_many :foods, through: :animal_foods

  validates_associated :animal_foods

  accepts_nested_attributes_for :animal_foods, allow_destroy: true
  accepts_nested_attributes_for :employee
end
