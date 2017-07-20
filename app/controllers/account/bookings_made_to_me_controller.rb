class Account::BookingsMadeToMeController < ApplicationController
  before_action :find_booking_made_to_me, only: [:show, :accept, :reject]

  def index
    @my_weapons = Weapon.where(owner_id: current_user.id)
    @bookings_made_to_me = []
    @my_weapons.each do |weapon|
      booking_made_by_me = Booking.where(weapon_id: weapon.id)
      @bookings_made_to_me << booking_made_by_me
    end
  end

  def show
    @weapon = Weapon.find(@booking.weapon_id)
    @number_of_days = (@booking.end_date - @booking.start_date).to_i
    @total_price = @number_of_days * @weapon.price
  end

  def accept
    @booking.status = "accepted"
    @booking.save
    redirect_to account_bookings_made_to_me_index_path
  end

  def reject
    @booking.status = "rejected"
    @booking.save
    redirect_to account_bookings_made_to_me_index_path
  end

  private

  def find_booking_made_to_me
    @booking = Booking.find(params[:id])
  end
end
