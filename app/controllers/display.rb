get '/display' do
  user = User.find(session[:user_id])
  unvoted_photos = user.unvoted_photos
  @photo = unvoted_photos[0]
  erb :display
end

post "/display/photo" do
  user = User.find(session[:user_id])
  unvoted_photos = user.unvoted_photos
  @photo = unvoted_photos[0]
  puts "I'm here son"
  if params[:like]
    puts "params idddd"
    puts params[:pic_id]
    photo = Photo.find(params[:pic_id])
    user.votes.create(photo_id: photo.id, category_id: photo.category_id, like: "like")
  elsif params[:dislike]
    photo = Photo.find(params[:pic_id])
    user.votes.create(photo_id: photo.id, category_id: photo.category_id, like: "dislike")
  end

  content_type :json
  {url: @photo.url}.to_json
end