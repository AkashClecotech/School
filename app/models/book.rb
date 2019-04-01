class Book < ApplicationRecord
  belongs_to :bookable, polymorphic: true
end
