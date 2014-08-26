class SessionsController < ApplicationController
	def new
		
  end

  def create

	@user = User.authenticate(params[:user][:email],params[:user][:password])

	 if @user
	 	session[:user_id] = @user.id
	    	redirect_to users_path
	   	 else 
	    	render text: "I have no idea who you are."	
	 end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end
end
