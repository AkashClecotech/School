class School < ApplicationRecord
  has_many :students
  has_one :principal
end
