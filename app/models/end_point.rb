class EndPoint < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :address
    belongs_to :vehicle
  acts_as_gmappable

	def gmaps4rails_address
		"#{self.address}"
	end

  geocoded_by :address

end
