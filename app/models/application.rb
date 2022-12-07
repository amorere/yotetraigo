class Application < ApplicationRecord
  belongs_to :user
  belongs_to :car
  has_many :bookings
  before_save :geocode_endpoints
  geocoded_by :pickup_point, :latitude  => :latitude, :longitude => :longitude
  geocoded_by :drop_point, :latitude  => :latitude2, :longitude => :longitude2

  private
  #To enable Google maps to works with multiple locations
  def geocode_endpoints
    if pickup_point_changed?
      geocoded = Geocoder.search(pickup_point).first
      if geocoded
        self.latitude = geocoded.latitude
        self.longitude = geocoded.longitude
      end
    end
    # Repeat for destination
    if drop_point_changed?
      geocoded = Geocoder.search(drop_point).first
      if geocoded
        self.latitude2 = geocoded.latitude
        self.longitude2 = geocoded.longitude
      end
    end
  end
end
