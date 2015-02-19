require_relative '../../spec_helper'

class RoutesSpec
  describe 'routes' do
    let(:user) { User.create(user: 'Rayan', email:"rayan@gmail.com" password: "heyhey")}

    before do
      user
    end

    it 'responds to login' do
      get '/auth/login'
      expect(last_response).to be_ok
      expect(last_response.body).to include('login')
    end
    it 'goes to the signup page' do
      get '/auth/signup'
      expect(last_response).to be_ok
      expect(last_response.body).to include('signup')
    end

  end
end