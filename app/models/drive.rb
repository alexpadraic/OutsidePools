class Drive < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  has_many :requests
  has_many :rides, through: :requests
end
