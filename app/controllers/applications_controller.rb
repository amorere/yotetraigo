class ApplicationsController < ApplicationController
  before_action :set_app, only: %i[show update destroy edit]

  def index
    @apps = Application.all
    @apps = Application.where.not(latitude: nil, latitude2: nil, longitude: nil, longitude2: nil)
    @markers = @apps.map do |app|
      {
        lat: app.latitude,
        lng: app.longitude,
        lat2: app.latitude2,
        lng2: app.longitude2 # ,
        # infoWindow: render_to_string(partial: "info_window", locals: { app: app })
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
      }
    end
  end

  def show
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
    @app.destroy
    redirect_to misapp_path, status: :see_other
  end

  private

  def set_app
    @app = Application.find(params[:id])
  end

  def app_params
    params.require(:application).permit(:pickup_point, :drop_point, :pickup_datetime, :confirmation_status, :price)
  end
end
