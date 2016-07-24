class Request < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :drives
  belongs_to :rides
  belongs_to :users, through: :rides
  belongs_to :users, through: :drives
end
