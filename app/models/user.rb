class User < ActiveRecord::Base  #----has_and_belongs_to_many :doctors
  belongs_to :quotes
  has_many :doctors, :through => :quotes  
  after_create :save_role_doctor
  
  validates_presence_of :name, :message => 'pleace is require'
  validates_presence_of :EPS, :message => 'pleace is require'
  validates_presence_of :address, :message => 'pleace is require'
  validates_presence_of :role, :message => 'pleace is require'
 
  private
  def save_role_doctor
    if self.role = "Doctor"
      # Guardo el id del user el la tabla doctor
      Doctor.create(:doctor_id => self.id)
    end   
  end 

  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role, :address, :EPS, :name, :email, :password, :password_confirmation, :remember_me
end
