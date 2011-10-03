class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.time :hour_init
      t.date :date_init
      t.time :hour_end
      t.date :date_end
      t.string :state, :default => 'activo'
      t.integer :doctor_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
