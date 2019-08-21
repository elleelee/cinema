class Photo < ApplicationRecord
  belongs_to :event
  validates :image, presence: true
  mount_uploader :image, PhotoUploader
end
