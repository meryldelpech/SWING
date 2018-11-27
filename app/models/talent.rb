class Talent < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :instrument, uniqueness: {scope: :user_id}, presence: true
end
