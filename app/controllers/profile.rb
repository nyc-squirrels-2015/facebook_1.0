get '/profile/:id' do
  @user = User.find(session[:user_id])
  if @user
    erb :'profile/profile'
  else
    erb :'auth/login'
  end
end

get '/profile/:id/change_password' do
    @user = User.find(params[:id])
    erb :'profile/edit'
end

put '/profile/:id/change_password' do
  if params[:password] == params[:password_confirmation]
    puts params[:password]
    puts params[:password_confirmation]
    user = User.find(params[:id])
    user.update_attributes(password: params[:password], password_confirmation: params[:password_confirmation])
    content_type :json
    {hey: "hey"}.to_json
  end
end

put '/profile/:id/change_name' do
  user = User.find(params[:id])
  user.update_attributes(name: params[:name])
end

put '/profile/:id/update_image' do
  user = User.find(params[:id])
  user.update_attributes(photo_url: params[:photo_url])
  content_type :json
  {url: params[:photo_url]}.to_json
end

