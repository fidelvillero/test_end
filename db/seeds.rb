# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create!(:id => 1, :email => "test1708@hotmail.com", , :role => "Admin", :name => "Administrador", :EPS => "my_esp", :address => "my_address", confirmation_token: nil)
