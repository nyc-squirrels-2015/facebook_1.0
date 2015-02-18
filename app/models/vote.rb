class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :photo
  belongs_to :category
end
