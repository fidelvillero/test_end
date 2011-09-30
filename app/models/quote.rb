class Quote < ActiveRecord::Base
  #has_many :quotes
  #belongs_to :doctor, :foreign_key => "id_doctor"
  #belongs_to :doctor, :foreign_key => "id_user"
  belongs_to :user
  belongs_to :doctor
  
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
