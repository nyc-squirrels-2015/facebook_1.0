get '/' do
  erb :welcome
end

get '/authenticate/login' do
  erb :'auth/login'
end

post '/authenticate/login' do
  user = User.find_by(email: params[:email])
  if user && user.try(:authenticate, params[:password])
    session[:user_id] = user.id
    erb :main
  else
    erb :'auth/login'
  end
end

get '/authenticate/signup' do
  erb :'auth/signup'
end

post '/authenticate/signup' do
  name = params[:name]
  email = params[:email]
  password= params[:password]
  password_conf = params[:password_confirmation]
  if name && email && password == password_conf
    user = User.create(name: name, email: email, password: password, password_confirmation: password_conf)
    session[:user_id] = user.id
    erb :main
  else
    redirect '/authenticate/signup'
  end
end

get '/logout' do
  session.delete(:user_id)
  erb :welcome
end
