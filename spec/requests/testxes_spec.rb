require 'spec_helper'

describe "Testxes" do
  describe "GET /testxes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get testxes_path
      response.status.should be(200)
    end
  end
end

describe"new_test" do
	it "adds a new test"
    user = Factory(:user)
    visit "admins/sign_in"
    fill_in "Password", :with => "meston209"
    fill_in "Email", :with => "aberdeenlab@gmail.com"
    click_button "Sign in"
    end
end