class ApplicationsController < ApplicationController
  before_action :set_app, only: %i[show update destroy edit offer newoffer]

  def index
    if params[:query].present?
      @apps = Application.search_by_country_city_and_comune(params[:query])

    else
      @apps = Application.all
    end
  end

  def show
    @app = Application.find(params[:id])
    # @apps = @apps.where.not(lat: nil, long: nil, lat2: nil, long2: nil)
    @markers =
      [{
        lat: @app.lat,
        long: @app.long,
        lat2: @app.lat2,
        long2: @app.long2

      }]
  end

  def offer
  end

  def newoffer
    @app.confirmation_status = "Contraoferta"
    @app.update(app_params)
    redirect_to misapp_path
  end

  def edit
  end

  def misapp
    @misapp = current_user.applications
  end

  def new
    @car = Car.find(params[:car_id])
    @app = Application.new
  end

  def create
    @car = Car.find(params[:car_id])
    @app = Application.new(app_params)
    @app.user_id = current_user.id
    @app.car_id = @car.id
    @app.confirmation_status = "Abierto"
    if @app.save
      redirect_to misapp_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @app.update(app_params)
    redirect_to misapp_path()
  end

  def destroy
    @app.destroy if @app.confirmation_status == "Abierto"
    redirect_to misapp_path, status: :see_other
  end

  private

  def set_app
    @app = Application.find(params[:id])
  end

  def app_params
    params.require(:application).permit(:pickup_point, :drop_point, :pickup_datetime, :country, :city, :comune, :confirmation_status, :price)
  end
end
