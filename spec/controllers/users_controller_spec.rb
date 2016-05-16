require 'rails_helper'

describe UsersController, :type => :controller do

		before do
			# @user = User.new(email: "test@test.com", password: "pasta")
			@user = FactoryGirl.create(:user)
		end

		describe "GET #show" do
				
			context "User is logged in" do
				before do
					sign_in @user
				end

				it "loads correct user details"
					get :show, id: @user.id
					expect(response).to have_http_status(200)
					expect(assigns(:user)).to eq @user
				end
			end

				
			context "No user is logged in" do
				it "redirects to login" do
					get :show, id: @user.id
					expect(response).to redirect_to(root_path)
				end

			end

			context "Cannot access second user show page" do
				it "redirects to root" do
					get :show, id: @user_second.id
					expect(response).to redirect_to(root_path)
				end
			end
		end