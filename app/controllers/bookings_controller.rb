class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
  end

  def create
  end

  def show
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:rider_id, :car_id, :cowave_id)
  end
end
