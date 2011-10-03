class Availabilitie < ActiveRecord::Base # disponibilidad
  belongs_to :user
  belongs_to :doctor
  
  #attr_accessible :hour_on, :hour_end, :state
end
