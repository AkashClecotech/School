class Student < ApplicationRecord
  has_many :books, as: :bookable
  has_many :classrooms
  has_many :teachers, :through => :classrooms
  belongs_to :school
end
