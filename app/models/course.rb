class Course < ApplicationRecord
    has_many :trainings
    has_many :dogs, through: :trainings
    has_many :obstracles
    belongs_to :users

end
