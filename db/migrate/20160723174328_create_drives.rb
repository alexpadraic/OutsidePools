class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.integer  :user_id,         presence: true
      t.float    :start_lat,       presence: true
      t.float    :start_long,      presence: true
      t.float    :end_lat,         presence: true
      t.float    :end_long,        presence: true
      t.datetime :departure_min,   presence: true
      t.datetime :departure_max,   presence: true
      t.integer  :seats_available, presence: true

      t.timestamps null: false
    end
  end
end
