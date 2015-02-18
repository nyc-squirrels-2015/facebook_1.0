class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :recommendations
  has_many :photos
end
