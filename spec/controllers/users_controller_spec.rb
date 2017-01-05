require 'rails_helper'

describe UsersController, :type => :controller do

	before do
		#@user = User.create!(:email => 'me@email.com', :password => '1234567890')
		@user = FactoryGirl.create(:user)
		@user2 = User.create!(:email => 'he@email.com', :password => '0123456789')
	end

	describe 'GET #show' do 
		context 'User is logged in' do
			before do 
				sign_in @user
			end
	  

			it 'loads correct user details' do 
			  	get :show, id: @user.id
			  	expect(response).to be_success
			  	expect(response.status).to eq 200
			  	expect(assigns(:user)).to eq @user
			end

			#it "doesn't load the second user" do
			  	#get :show, id: @user2.id
			  	
			  	#expect(response.status).to eq 302
			  	#expect(response).to redirect_to(root_path)
			#end
		end

	    context 'User is not logged in' do 
	  		it 'redirects to login' do 
	  			get :show, id: @user.id
	  			expect(response).to redirect_to("/login")
	  		end
  	  	end	
  	end
end