class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @cars = Car.all
  end

  def cancel_policy
    
  end
end
