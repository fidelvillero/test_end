class User < ActiveRecord::Base
  # xxxxxxxx has_and_belongs_to_many :quotes
  # xxxxxxxxxx belongs_to :quotes
  belongs_to :doctor, :foreign_key => "id_doctor"
  belongs_to :doctor, :foreign_key => "id_user"
  belongs_to :quotes
  has_many :doctors, :through => :quotes
  #----has_and_belongs_to_many :doctors
  
  #validates_presence_of :name, :message => 'pleace is require'
  #validates_presence_of :EPS, :message => 'pleace is require'
  #validates_presence_of :address, :message => 'pleace is require'
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :address, :EPS, :name, :email, :password, :password_confirmation, :remember_me
end
