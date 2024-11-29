class Item < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  has_one_attached :photo
end
