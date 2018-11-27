class Talent < ApplicationRecord
  belongs_to :user
  has_many :reservations

  mount_uploader :photo, PhotoUploader

  validates :instrument, uniqueness: {scope: :user_id}, presence: true
end
