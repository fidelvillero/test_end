class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.time :init
      t.time :end
      t.string :state
      t.references :user
      t.references :doctor

      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
