class User < ApplicationRecord
  belongs_to :dog
  has_many :trainings
  has_many :courses, through: :trainings
end
