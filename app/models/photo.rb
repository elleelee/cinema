class Photo < ApplicationRecord
  belongs_to :event
  validates :name, presence: true
  mount_uploader :name, PhotoUploader
end
