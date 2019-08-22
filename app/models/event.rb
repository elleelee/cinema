class Event < ApplicationRecord
  VENUE_CATEGORIES = ["Home", "Pub", "Roof top", "Public space"]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings, dependent: :destroy
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
  # validates :poster, presence: true
  mount_uploader :poster, PhotoUploader
end
