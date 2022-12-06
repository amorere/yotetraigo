class BookingsController < ApplicationController
  before_action :find_booking, only: %i[update edit destroy]

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def index
    @bookings = current_user.bookings
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.car_id = @car.id
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
  end

  def update
    @booking.update(booking_params)
    # redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to booking_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:pick_point, :drop_point, :pickup_datetime, :status )
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
