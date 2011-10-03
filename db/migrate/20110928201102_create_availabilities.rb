class CreateAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :availabilities do |t|
      t.time :hour_on
      t.time :hour_end
      t.string :state, :default => 'activo'
      t.integer :doctor_id
      t.integer :user_id
      t.references :user
      t.references :doctor

      t.timestamps
    end
  end

  def self.down
    drop_table :availabilities
  end
end
