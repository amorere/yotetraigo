class Application < ApplicationRecord
  belongs_to :user
  belongs_to :car
  has_many :bookings
  before_save :geocode_endpoints
  geocoded_by :pickup_point, :latitude => :lat, :longitude => :long
  geocoded_by :drop_point, :latitude => :lat2, :longitude => :long2
  after_validation :geocode, if: :will_save_change_to_pickup_point?
  after_validation :geocode, if: :will_save_change_to_drop_point?
  include PgSearch::Model
  pg_search_scope :search_by_country_city_and_comune,
    against: [ :country, :city, :comune ],
    using: {
      tsearch: { prefix: true }
  }

  private

  def geocode_endpoints
    if pickup_point_changed?
      geocoded = Geocoder.search(pickup_point).first
      if geocoded
        self.lat = geocoded.latitude
        self.long = geocoded.longitude
      end
    end
    # for destination
    if drop_point_changed?
      geocoded = Geocoder.search(drop_point).first
      if geocoded
        self.lat2 = geocoded.latitude
        self.long2 = geocoded.longitude
      end
    end
  end
end
