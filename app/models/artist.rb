class Artist < ActiveRecord::Base
  # Remember to create a migration!
  has_many :requests
end
