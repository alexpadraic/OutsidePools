class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.integer  :user_id,            presence: true
      t.string    :start_address,      presence: true
      t.string    :end_address,        presence: true
      t.datetime :departure_min,      presence: true
      t.datetime :departure_max,      presence: true
      t.integer  :seats_available,    presence: true
      t.integer  :tolerance_in_miles, presence: true
      t.string   :description

      t.timestamps null: false
    end
  end
end
