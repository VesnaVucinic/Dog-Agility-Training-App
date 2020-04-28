class Dog < ApplicationRecord
  belongs_to :user
  has_many :trainings
  has_many :courses through: trainings
end
