class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validate :item_not_owned_by_user
  validates :status, presence: true

  private

  def item_not_owned_by_user
    if item.present? && item.user == user
      errors.add(:item, "You cannot book your own item.")
    end
  end
end

# Make a method belongs to current-user -> posted-items -> posted items that are booked.
