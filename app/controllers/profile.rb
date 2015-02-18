get '/profile/:id' do
  @user = User.find(session[:user_id])
  if @user
    erb :'profile/profile'
  else
    erb :'auth/login'
  end
end

get '/profile/:id/change_password' do
  if session[:user_id] == params[:id]
    @user = User.find(params[:id])
    erb :'profile/edit'
  else
    redirect "/profile/#{params[:id]}"
  end
end

put '/profile/:id/change_password' do
  if params[:password] == params[:password_confirmation]
    user = User.find(params[:id])
    user.update_attributes(password: params[:password], password_confirmation: params[:password_confirmation])
    erb :'profile/profile'
  else
    @message = "Passwords don't match"
    redirect "/profile/#{params[:id]}/change_password"
  end
end

get '/profile/:id/change_name' do
  user = User.find(params[:id])
  user.update_attributes(name: params[:name])
  content_type :json
  return {}
end