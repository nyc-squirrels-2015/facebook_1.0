def voted?
  User.find(session[:user_id]).votes.length == 0
end