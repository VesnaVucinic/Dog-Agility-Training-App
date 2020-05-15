class Course < ApplicationRecord
    has_many :trainings
    has_many :dogs
    has_many :obstracles
    belongs_to :users

end
