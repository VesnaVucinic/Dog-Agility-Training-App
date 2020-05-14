Dog Agility Training App

User
has_many :dogs through: trainings
has_many :trainings
has_many :courses 
username :string
email :
password


Dog
has_many users through: trainings
has_many :trainings
has_many :courses 
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
belongs_to :user
belongs_to :dog
Data :datatime
Complete: boolean, default false  
Time : string
Benefit :string



