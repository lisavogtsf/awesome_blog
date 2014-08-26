class SessionsController < ApplicationController
	def new
  end

  def create

	@user = User.authenticate(params[:user][:email],params[:user][:password])

	 if @user
	 	session[:user_id] = @user.id
	    	render text: 'Logged in!'
	   	 else 
	    	render text: "I have no idea who you are."	
	 end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to site_path
  end
end
