require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    # users#index
    it "gets all users" do
      get users_url
      expect(response).to have_http_status(200)
      expect(response.body).to include("[Aa]ll users")
    end
  end

  describe "POST /users" do
    # users#create
    it "creates a new user" do
      post users_url
      expect(response).to have_http_status(201)
      expect(response).to redirect_to(user_url(User.last))
    end
  end

  describe "GET /users/new" do
    # users#new
    it "bring up the new_user template" do
      get new_user_url
      expect(response).to have_http_status(200)
      expect(response.body).to include("New user")
    end
  end

  describe "GET /users/:id" do
    # users#show
    it "bring up a specific user by id" do
      get user_url
      expect(response).to have_http_status(200)
      expect(response.body).to include("User details")
    end
  end

end
