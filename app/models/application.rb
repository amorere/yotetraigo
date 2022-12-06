class Application < ApplicationRecord
  belongs_to :user
  belongs_to :car
  has_many :bookings
end
