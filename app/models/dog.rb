class Dog < ApplicationRecord
  has_many :users, through: :trainings
  has_many :trainings
  has_many :courses
end
