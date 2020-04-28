class Course < ApplicationRecord
    has_many :trainings
    has_many :dogs, through: :trainings
    has_many :obstracles
    has_many :users, through: :trainings

end
