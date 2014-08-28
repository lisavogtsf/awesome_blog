class PasswordsController < ApplicationController
  def new

  end

  def create
  	user = User.find_by_email(params[:email])
  	if user
  	 user.set_password_reset # setting code

  	 UserMailer.password_reset(user).deliver
  	end
  	redirect_to login_url, notice: "Email was sent with instructions"
  end


  def edit
    @code = params[:id]
  end

  def update
    user = User.find_by_code(params[:id])
    #binding.pry
    newpassword = params.permit(:password, :password_confirmation)
    user.update_attributes({:password => newpassword[:password], :password_confirmation => newpassword[:password_confirmation]})
    redirect_to login_url, notice: "Password changed, please Login"
  end
end
