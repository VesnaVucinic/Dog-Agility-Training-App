class User < ApplicationRecord
  has_many :dogs
  has_many :trainings
  has_many :courses

  has_secure_password
  validates :username, :email, presence: true
  validates :username, uniqueness: true

end
