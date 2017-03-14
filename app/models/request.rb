class Request < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :song
  belongs_to :artist
  belongs_to :genre
  belongs_to :source

end
