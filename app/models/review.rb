class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true }
  validates_presence_of :content
  validates  :rating, inclusion: { in: 0..5 }
end
