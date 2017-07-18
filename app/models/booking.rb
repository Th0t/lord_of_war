class Booking < ApplicationRecord
  belongs_to :weapon
  belongs_to :hirer, class_name: "User"

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: ["pending", "accepted", "rejected"], allow_nil: false }
  validates :hirer_id, presence: true

  def number_of_days(booking)
    (booking.end_date - booking.start_date).to_i
  end

  def total_price(booking)
    booking.price * number_of_days(booking)
  end

end
