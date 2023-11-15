class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, length: { minimum: 1 }
  validates :rating, numericality: { only_integer: true, in: 0..5 }
end
