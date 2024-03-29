require 'spec_helper'
require 'admin'

describe Admin do
  before(:each) do
    @adatt = { 
      :email => "aberdeenlab@gmail.com",
      :password => "meston209",
      :password_confirmation => "meston209"
    }
  end
  
  it "should create a new admin" do
    Admin.create!(@adatt)
  end
  
  it "should require an email address" do
    no_email = Admin.new(@adatt.merge(:email => " "))
    no_email.should_not be_valid
  end
  
  it "should reject invalid email address" do
    email = %w[aberdeenlab@gmail,com aberdeenlab_at_gmail.com]
    email.each do |e|
    invalid_email = Admin.new(@adatt.merge(:email => e))
    invalid_email.should_not be_valid
  end
  end
  
   describe "passwords" do

    before(:each) do
      @admin = Admin.new(@adatt)
    end

    it "should have a password" do
      @admin.should respond_to(:password)
    end

    it "should have a password confirmation" do
      @admin.should respond_to(:password_confirmation)
    end
  end  
  
end