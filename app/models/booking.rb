class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :review
  belongs_to :application
end
