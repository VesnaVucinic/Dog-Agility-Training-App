class User < ApplicationRecord
  belongs_to :dog
  has_many :trainings
  has_many :courses, through: :trainings

  has_secure_password
  validates :username, :email, presence: true
  validates :username, uniqueness: true

end
