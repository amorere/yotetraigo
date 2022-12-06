class ReviewsController < ApplicationController
  before_action :set, only: %i[show update destroy edit]

  def index
  end

  def show
  end

  def edit
  end

  def new

  end

  def create

  end

  def update

  end

  def destroy
  end

  private

  def set_
    @car = Car.find(params[:id])
  end

  def params
    params.require(:car).permit(:model, :brand, :plate, :color, :transmission, :insurance_other_drivers)
  end

end
