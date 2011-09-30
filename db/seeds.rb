# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#use = User.create!(:id => 1, :email => "test1708@hotmail.com", :encrypted_password: => "", :password => "1234567", :role => "Admin", :name => "Administrador", :EPS => "my_esp", :address => "my_address", confirmation_token: nil)
#use.save

#user = User.create!(id: 5, email: "fideljose1708@hotmail.com", encrypted_password: "$2a$10$041FTAL3ljcv5ZNznV22h..mPwUF31H6KoqTcuykU5TE...", role: "Paciente", name: "fidel jose villero de hoyos", EPS: "saludcoop", address: "my_address", confirmation_token: nil, confirmed_at: "2011-09-30 02:35:38", confirmation_sent_at: "2011-09-30 02:35:14", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2011-09-30 14:15:22", sign_in_count: 9, current_sign_in_at: "2011-09-30 15:15:59", last_sign_in_at: "2011-09-30 15:13:18", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", created_at: "2011-09-30 02:35:14", updated_at: "2011-09-30 15:15:59", id_doctor: nil)
#user.save
user = User.create!(:email => "admin1708@hotmail.com", :password => "1234567",  :password_confirmation => "1234567", :role => 'Admin', :name => 'fidel',  :EPS => 'Saludcoop', :address => 'Kr 6 # 16 - 22', :skip_confirmation => true)
#user.save