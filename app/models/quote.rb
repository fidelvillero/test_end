class Quote < ActiveRecord::Base
  #belongs_to :doctor, :foreign_key => "id_doctor"
  #belongs_to :doctor, :foreign_key => "id_user"
  belongs_to :user
  belongs_to :doctor
  
  before_save :hour_finally
  before_save :date_finally
  #before_save :save_user
  
  validates_uniqueness_of :doctor_id, :scope => [:hour_init, :hour_end, :date_init, :date_end]
  #validates :doctor_id, :uniqueness => {:scope => :hour_init, :scope => :date_end} 
  #validates_presence_of :init, :message => 'pleace is require'
  validates_presence_of :state, :message => 'pleace is require'
  #validates_presence_of :doctor, :message => 'pleace is require'
  #validates_presence_of :user, :message => 'pleace is require'
  
  private
  def hour_finally
    time_tos = self.hour_init
    minut = 1800
    self.hour_end = time_tos + minut
  end
  
  private
  def date_finally
    self.date_end = date_init
  end
end
