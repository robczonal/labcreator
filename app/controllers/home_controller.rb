class HomeController < ApplicationController
  def index
	  if admin_signed_in?
		  redirect_to "/nulab_admin"
	  end
  end
end
