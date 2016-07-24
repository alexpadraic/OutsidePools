class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :drive_id,  presence: true
      t.integer :ride_id,   presence: true
      t.boolean :confirmed, presence: true

      t.timestamps null: false
    end
  end
end
