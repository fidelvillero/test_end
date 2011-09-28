class CreateAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :availabilities do |t|
      t.time :hour_on
      t.time :hour_end
      t.string :state
      t.references :doctor

      t.timestamps
    end
  end

  def self.down
    drop_table :availabilities
  end
end
