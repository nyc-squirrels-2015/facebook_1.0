class User < ActiveRecord::Base
  has_secure_password
  has_many :votes
  # Remember to create a migration!

  def unvoted_photos
    votes = self.votes
    @voted_photos = votes.map{|vote| vote.photo_id}
    @photos = Photo.all.map{|photo| photo.id}
    @photos-@voted_photos
  end
end
