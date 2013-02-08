require 'spec_helper'

describe User do
  before(:each) do
    @usatt = { 
      :name => "User",
      :email => "test@test.com",
      :password => "test123",
      :password_confirmation => "test123"
    }
  end
  
  it "should create a new user" do
    User.create!(@usatt)
  end
  
  it "should require an email address" do
    no_email = User.new(@usatt.merge(:email => " "))
    no_email.should_not be_valid
  end
  
  it "should reject invalid email address" do
    email = %w[test@test,com test_at_test.com]
    email.each do |e|
    invalid_email = User.new(@usatt.merge(:email => e))
    invalid_email.should_not be_valid
    end
  end
  
  it "should require a unique name" do
  
  end
  
   describe "passwords" do

    before(:each) do
      @user = User.new(@usatt)
    end

    it "should have a password" do
      @user.should respond_to(:password)
    end

    it "should have a password confirmation" do
      @user.should respond_to(:password_confirmation)
    end
  end
  
end
