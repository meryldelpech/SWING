class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :talent

  validates :begin_date, :end_date, presence: true

  enum status: ["pending", "accepted", "declined"]

  before_create :set_status
  before_save :set_total_price_and_fees


  private

  def set_status
    self.status = "pending"
  end

  def set_total_price_and_fees
    total_hours = (self.end_date.to_time - self.begin_date.to_time) / 1.hours
    self.total_price = total_hours * self.talent.price
    self.fees = self.total_price * 20 / 100
  end
end
