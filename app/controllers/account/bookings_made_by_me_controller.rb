class Account::BookingsMadeByMeController < ApplicationController
  before_action :find_booking_made_by_me, only: [:show]

  def index
    @bookings_made_by_me = Booking.where(hirer_id: current_user.id)
  end

  def show
    @weapon = Weapon.find(@booking.weapon_id)
    @number_of_days = (@booking.end_date - @booking.start_date).to_i
    @total_price = @number_of_days * @weapon.price
  end

  private

  def find_booking_made_by_me
    @booking = Booking.find(params[:id])
  end
end
