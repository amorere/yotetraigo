class CarsController < ApplicationController

  before_action :set_car, only: %i[show update destroy edit]

  def index
    @cars = Car.all
  end

  def show

  end

  def edit
  end

  def misautos
    @misautos = current_user.cars
  end


  def miautodeviaje
    @misautos = current_user.cars
  end


  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    if @car.save
      redirect_to  misautos_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @car.update(car_params)
    redirect_to misautos_path
  end

  def destroy
    @car.destroy
    redirect_to misautos_path, status: :see_other
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :brand, :plate, :color, :transmission, :insurance_other_drivers, :photo)
  end
end
