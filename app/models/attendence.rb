class Attendence < ActiveRecord::Base
  attr_accessible :employee_boarded, :gmaps, :journy_date, :latitude, :longitude, :user_id, :user_type
end
