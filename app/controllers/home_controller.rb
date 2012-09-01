class HomeController < ApplicationController
  def index
    if Admin.find(:all).empty?
      @adminemail="the administrator"
      flash.now[:alert] = 'No administrator registered! Please contact IT support.' #if there is no admin, display an alert message
    else
      admin=Admin.first #the first admin is displayed as the email contact on the homepage
      @adminemail=admin.email

    end
  end
end
