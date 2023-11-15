class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant
  # A review must have a content.
  validates :content, presence: true
  # A review must have a rating.
  # A review’s rating must be a number between 0 and 5.
  # A review’s rating must be an integer. A review with a rating of 2.5 should be invalid!
  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5 }
end
