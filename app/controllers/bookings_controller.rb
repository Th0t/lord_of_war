class BookingsController < ApplicationController
  before_action :find_booking, only: [:show]
  skip_before_action :authenticate_user!, only: :new

  def show
  end

  def new
    @booking = Booking.new(booking_params)
    @weapon = Weapon.find(params[:weapon_id])
    @start_date = DateTime.strptime(booking_params[:start_date], '%m/%d/%Y').to_date
    @end_date = DateTime.strptime(booking_params[:end_date], '%m/%d/%Y').to_date
    @number_of_days = (@end_date - @start_date).to_i
    if @number_of_days <= 0
      flash[:alert] = "Wrong dates: end date must be superior to start date"
      redirect_to weapon_path(@weapon)
    else
      @total_price = @weapon.price * @number_of_days
    end
  end

  def create
    @weapon = Weapon.find(params[:weapon_id])
    @booking = Booking.new(booking_params)
    @number_of_days = (@booking.end_date - @booking.start_date).to_i
    @total_price =  @number_of_days * @weapon.price
    if @booking.save
      redirect_to account_bookings_made_by_me_path(@booking)
      flash[:notice] = "Your booking request has been sent to the owner"
    else
      redirect_to weapon_path(@weapon)
      flash[:notice] = "Your booking has failed, please try again"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :hirer_id, :weapon_id, :status)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  end
