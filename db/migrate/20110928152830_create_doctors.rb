class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      #t.string :name
      #t.string :mail
      #t.string :address
      #t.string :password
      #t.string :university
      #t.string :role, :default => 'Doctor', :null => false
      t.integer :doctor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end
