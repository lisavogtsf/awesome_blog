class UsersController < ApplicationController

	before_action :is_authenticated?

	def index
		@users = User.all
		@current_user = current_user
		#binding.pry
	end

	# display new user form
	def new
		@user = User.new
		@current_user = current_user
	end

	# create new user
	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    		newbie = User.create(user_params)
    		redirect_to newbie
    		# redirect_to user_path

	end

	# edit the user
	def edit
		@current_user = current_user
		@user = find_user_by_id
	end

	# udate the user
	def update

		user_id = params[:id]
		user = User.find(user_id)
		updated_attributes = params.require(:user).permit(:first_name, :last_name, :email)
		user.update_attributes(updated_attributes)
		# redirect_to "/users/#{user_id}"
		# redirect_to user_path(user_id)
		redirect_to user
	end

	# show one user
	def show
		@user = User.find_by_id(params[:id])
		@current_user = current_user

	end

	# delete the user
	def destroy
	end

	private

	def find_user_by_id
		user_id = params[:id]
		@user = User.find_by_id(user_id)
	end

end
