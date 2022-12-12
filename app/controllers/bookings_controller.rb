class BookingsController < ApplicationController
  before_action :find_booking, only: %i[update edit destroy]

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def index
    @bookings = current_user.bookings
  end

  def misbook
    if current_user.is_driver
      @misbook = current_user.bookings
    else
      @misbook = []
      current_user.cars.each do |car|
        @misbook << car.bookings
      end
      @misbook = @misbook[0]
    end
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.car_id = @car.id
    @booking.status = "Pendiente"
    @booking.application_id = params[:app_id]
    if @booking.save
      redirect_to misbook_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = "Completado"
    @booking.save
    redirect_to misbook_path

  end

  def destroy
    @booking.destroy
    redirect_to booking_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
