class ApplicationController < ActionController::Base
  #protect_from_forgery
  
  protected
        #Checks whether a user is signed in as a user or administrator
	def authenticate_user_or_admin!
		unless user_signed_in? or admin_signed_in?
		redirect_to root_path, :alert => "Access Denied"
		end
	end
	
	
end
