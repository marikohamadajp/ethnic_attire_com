class Dress < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
  belongs_to :user
end
