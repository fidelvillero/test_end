# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create!(:email => "lisa@gmail.com", :role => "Admin", :password => "1234567",  :password_confirmation => "1234567", :name => "lisa",  :EPS => "Saludcoop", :address => "Kr 6 # 16 - 22")#, :skip_confirmation => true)
user = User.create!(:email => "testDoctor@gmail.com", :role => "Doctor", :password => "1234567",  :password_confirmation => "1234567", :name => "doctor koombea",  :EPS => "sura", :address => "Kr 6 # 16 - 22")#, :skip_confirmation => true)
user = User.create!(:email => "testDoctor_2@gmail.com", :role => "Doctor", :password => "1234567",  :password_confirmation => "1234567", :name => "doctor koombea 2",  :EPS => "sura", :address => "Kr 6 # 16 - 22")#, :skip_confirmation => true)