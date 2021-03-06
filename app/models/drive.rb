class Drive < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :requests
  has_many :rides, through: :requests
  validates :tolerance_in_miles, presence: true 
end
