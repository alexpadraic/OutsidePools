class Request < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :drive
  belongs_to :ride
end
