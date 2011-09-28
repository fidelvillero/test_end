class User < ActiveRecord::Base
  
  #validates_presence_of :name, :message => 'pleace is require'
  #validates_presence_of :EPS, :message => 'pleace is require'
  #validates_presence_of :address, :message => 'pleace is require'
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :address, :EPS, :name, :email, :password, :password_confirmation, :remember_me
end
