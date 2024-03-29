# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111003082426) do

  create_table "appointments", :force => true do |t|
    t.time     "init"
    t.time     "end"
    t.string   "state",      :default => "activo"
    t.string   "doctor"
    t.string   "user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "availabilities", :force => true do |t|
    t.time     "hour_on"
    t.time     "hour_end"
    t.string   "state",      :default => "activo"
    t.integer  "doctor_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_user"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.boolean  "all_day"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", :force => true do |t|
    t.time     "hour_init"
    t.date     "date_init"
    t.time     "hour_end"
    t.date     "date_end"
    t.string   "state",      :default => "activo"
    t.integer  "doctor_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",         :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",         :null => false
    t.string   "name"
    t.string   "role",                                  :default => "Paciente"
    t.string   "EPS"
    t.string   "address"
    t.string   "university"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_doctor"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
