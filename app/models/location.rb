class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  acts_as_gmappable :latitude => 'latitude', :longitude => 'longitude', :process_geocoding => :geocode?,
                    :address => "address", :normalized_address => "address"
end
