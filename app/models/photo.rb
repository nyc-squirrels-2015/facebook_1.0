class Photo < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes
  belongs_to :category
end
