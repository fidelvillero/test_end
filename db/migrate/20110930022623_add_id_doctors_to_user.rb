class AddIdDoctorsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :id_doctors, :integer
  end

  def self.down
    remove_column :users, :id_doctors
  end
end
