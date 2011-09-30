class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.time :init
      t.time :end
      t.string :state, :default => 'activo'
      t.integer :id_doctor
      t.integer :id_user

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
