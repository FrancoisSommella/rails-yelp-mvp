class Restaurant < ApplicationRecord
  has_many :reviews
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates_presence_of :name, presence: true
  validates_presence_of :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
