class HomeController < ApplicationController
  def index
    if Admin.find(:all).empty?
      @adminemail="the administrator"
      flash.now[:alert] = 'No administrator registered! Please contact IT support.'
    else
      admin=Admin.first
      @adminemail=admin.email

    end
  end
end
