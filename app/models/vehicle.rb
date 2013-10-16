class Vehicle < ActiveRecord::Base
  attr_accessible :driver_name, :not_in_use, :user_id, :vehicle_make, :vehicle_name, :vehicle_number, :start_point_attributes, :end_point_attributes
  validates_presence_of :driver_name, :vehicle_make, :vehicle_name, :vehicle_number
  has_one :start_point
  has_one :end_point
  accepts_nested_attributes_for :start_point
  accepts_nested_attributes_for :end_point


def distance(a, b)
  rad_per_deg = Math::PI/180  # PI / 180
  rkm = 6371                  # Earth radius in kilometers
  rm = rkm * 1000             # Radius in meters

  dlon_rad = (b[1]-a[1]) * rad_per_deg  # Delta, converted to rad
  dlat_rad = (b[0]-a[0]) * rad_per_deg

  lat1_rad, lon1_rad = a.map! {|i| i * rad_per_deg }
  lat2_rad, lon2_rad = b.map! {|i| i * rad_per_deg }

  a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
  c = 2 * Math.asin(Math.sqrt(a))

  rm * c # Delta in meters
end

#puts distance [46.3625, 15.114444],[46.055556, 14.508333]


end
