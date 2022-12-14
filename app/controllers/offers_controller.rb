class OffersController < ApplicationController

  def new
    @application = Application.find(params[:application_id])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.application_id = Application.find(params[:application_id]).id
    @offer.status = "Pendiente"
    @offer.user_id = current_user.id
    if @offer.save
      redirect_to  ofertappdriver_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def ofertapp
    @application = Application.find(params[:application_id])
    @offers = @application.offers
  end

  def ofertappdriver
    @offers = current_user.offers
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.status = "Aceptado"
    @app = @offer.application
    @app.price = @offer.price
    @app.confirmation_status = "Cerrado"
    @offer.save
    @app.save
    redirect_to misapp_path
  end

  private

  def offer_params
    params.require(:offer).permit(:price)
  end

end
