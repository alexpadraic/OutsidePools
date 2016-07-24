class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.integer  :user_id,       presence: true
      t.float    :start_address, presence: true
      t.float    :end_address,   presence: true
      t.datetime :departure_min, presence: true
      t.datetime :departure_max, presence: true
      t.integer  :passengers,    presence: true

      t.timestamps null: false
    end
  end
end
