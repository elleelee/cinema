class Event < ApplicationRecord
  VENUE_CATEGORIES = ["home", "pub", "roof top", "public space"]
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :venue_type, presence: true, inclusion: { in: VENUE_CATEGORIES }
  validates :movie, presence: true
  validates :ticket_price, presence: true
  validates :capacity, presence: true
end
