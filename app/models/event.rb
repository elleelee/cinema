class Event < ApplicationRecord
  VENUE_CATEGORIES = ["Home", "Pub", "Roof top", "Public space"]
  belongs_to :user
  has_many :bookings
  has_many :photos, dependent: :destroy
  has_many :users, through: :bookings
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :venue_type, presence: true, inclusion: { in: VENUE_CATEGORIES }
  validates :movie, presence: true
  validates :ticket_price, presence: true
  validates :capacity, presence: true
  mount_uploader :photos, PhotoUploader
end
