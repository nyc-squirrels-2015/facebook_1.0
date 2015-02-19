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

  def most_voted_cat
    @array = []
    self.votes.where(like: "like").each{|vote| @array << vote.category_id}
    max = @array.group_by{|i| i}.max{|x,y| x[1].length <=> y[1].length}[0]
    p "this is max"
    p max
    @array.delete(max)
    max
  end

  def second_most_voted
    if @array.length != 0
      max = @array.group_by{|i| i}.max{|x,y| x[1].length <=> y[1].length}[0]
      max
    end
  end
end
