class Teacher < ApplicationRecord
  has_many :books, as: :bookable
  has_many :classrooms
  has_many :students, :through => :classrooms
end
