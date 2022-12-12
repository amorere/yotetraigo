class Application < ApplicationRecord
  belongs_to :user
  belongs_to :car
  has_many :bookings
  has_many :offers
  include PgSearch::Model
  pg_search_scope :search_by_country_city_and_comune,
    against: [ :country, :city, :comune ],
    using: {
      tsearch: { prefix: true }
  }
end
