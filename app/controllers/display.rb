get '/display' do
  user = User.find(session[:user_id])
  unvoted_photos = user.unvoted_photos
  @photo = Photo.find(unvoted_photos[0])
  erb :display
end

post "/display/photo" do
  user = User.find(session[:user_id])

  if params[:like] == "like"
    photo = Photo.find(params[:pic_id])
    user.votes.create(photo_id: photo.id, category_id: photo.category_id, like: "like")
  elsif params[:like] == "dislike"
    photo = Photo.find(params[:pic_id])
    user.votes.create(photo_id: photo.id, category_id: photo.category_id, like: "dislike")
  end

  if user.unvoted_photos.length ==0
    content_type :json
    {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJf3t3sm-cgLTImfTyXHSZGPqZ_OrADQw8QK-f6q7F153LmgBGjVbkzQ" , new_id: 1000 , photo_length: 0, redirect:"/profile/#{user.id}"}.to_json
  else
    unvoted_photos = user.unvoted_photos
    @photo = Photo.find(unvoted_photos[0])
    content_type :json
    {url: @photo.photo_url, new_id: @photo.id, photo_length: unvoted_photos.length }.to_json
  end

end