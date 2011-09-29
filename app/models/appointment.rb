class Appointment < ActiveRecord::Base
  belongs_to :doctors
  
  before_save :end_quote
  #before_save :save_user
  
  private
  def end_quote
    time_tos = self.init
    minut = 1800
    self.end = time_tos + minut
  end
  validates_presence_of :init, :message => 'pleace is require'
  validates_presence_of :state, :message => 'pleace is require'
  validates_presence_of :doctor, :message => 'pleace is require'
  validates_presence_of :user, :message => 'pleace is require'
  
=begin
  private
  def save_user
    self.user = @current_user
  end
=end
end
