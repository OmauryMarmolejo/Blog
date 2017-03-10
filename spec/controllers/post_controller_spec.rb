require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "GET #index" do
    it "show a list of all post" do
      get :index
      expect(response).to be_success
    end
  end

#  describe "Post title:" do
 #   it "should have the title 'Post 2'" do
  #    visit "posts/2"
   #   expect(response).to have_selector('h2', text: 'Post 2')
   # end
#  end
end
