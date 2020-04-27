Dog Agility Training App

User
belongs_to :dog
has_many :trainings
has_many :courses through: trainings
username :string
email :
password


Dog
belongs_to user
has_many :trainings
has_many :courses through: trainings
name
age
breed
category


Course
has_many :trainings
has_many :dogs through: :trainings
has_many :obstracles
Description :string
Location :string


Obstracles
belongs_to course
Name :string
Description :string
Image_url :string


Training
belongs_to :course
belongs_to :dog
Data :datatime
Complete: boolean, default false  
Time : string
Benefit :string



