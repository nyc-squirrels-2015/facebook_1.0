class Recommendation < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :category
end
