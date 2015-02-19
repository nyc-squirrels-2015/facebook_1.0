get '/:id/recommendations' do
  user = User.find(params[:id])
  @best_seller = Recommendation.where(category_id: user.most_voted_cat)
  p "most voted"
  p @best_seller
  @second = Recommendation.where(category_id: user.second_most_voted)
  p "second most voted style"
  p @second
  erb :recommendations
end

delete '/:id/recommendations/delete' do
  User.find(session[:user_id]).votes.each{|vote| vote.destroy}
  redirect '/display'
end
