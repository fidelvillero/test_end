class AddIdUserToDoctors < ActiveRecord::Migration
  def self.up
    add_column :doctors, :id_user, :integer
  end

  def self.down
    remove_column :doctors, :id_user
  end
end
