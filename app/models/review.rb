class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
  # A review must have a content and a rating. The rating should be a number between 0 and 5.
end
