class Talent < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :instrument, uniqueness: true, presence: true
end
