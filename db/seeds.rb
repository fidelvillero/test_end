# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#User.create(:id => 1, :email => "test1708@hotmail.com", , :role => "Admin", :name => "Administrador", :EPS => "my_esp", :address => "my_address")
=begin
user = User.create!({:email => "lisa@medicalapp.com", :role => "admin", :password => "cuddy", :password_confirmation => "cuddy" })
Person.create( :user_id => user.id , :name => 'Lisa' , :lastname => 'Cuddy',:sex=>'Female', :birthday=>'01-01-1980',:cellnumber=>'3003404040',:city=>'Bogota',:address=>'Calle 90  N.45-78',:status=>'Activo',:typeper=>'admin')
=end