class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :total_price, :number_of_days, :available]
  skip_before_action :authenticate_user!, only: :new

  def show
  end

  def new
    @booking = Booking.new
    @number_of_days = 17
    @total_price = @number_of_days * 215000000
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end


end
