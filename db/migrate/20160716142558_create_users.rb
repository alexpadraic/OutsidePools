class CreateUsers < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :name, presence: true
            t.string :email,         presence: true, uniqueness: true
            t.string :password_hash, presence: true
            t.text   :bio
            t.string :fav_artist

            t.timestamps null: false
        end
    end
end
