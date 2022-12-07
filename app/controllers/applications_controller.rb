class ApplicationsController < ApplicationController
  before_action :set_app, only: %i[show update destroy edit]

  def index
    @app = Application.all
  end

  def show
  end

  def edit
  end

  def new
    @car = Car.find(params[:car_id])
    @app = Application.new
  end

  def create
    @car = Car.find(params[:car_id])
    @app = Application.new(app_params)
    @app.user_id = current_user.id
    raise
    if @app.save
      # redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @app.update(app_params)
    redirect_to app_path(@app)
  end

  def destroy
    @app.destroy
    redirect_to misautos_path, status: :see_other
  end

  private

  def set_app
    @app = Application.find(params[:id])
  end

  def app_params
    params.require(:application).permit(:pick_point, :drop_point, :pickup_datetime, :confirmation_status, :price)
  end
end
