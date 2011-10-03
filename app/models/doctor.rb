class Doctor < ActiveRecord::Base
  has_many :user
  has_many :quotes
  #has_many :doctor, :through => :quotes
  #has_many :appointments
end
