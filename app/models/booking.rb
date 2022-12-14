class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :review, optional: true
  belongs_to :application

  def close_app!
    @app = self.application
    @app.confirmation_status = "Cerrado"
    @app.save
  end
end
