class PagesController < ApplicationController
before_action :is_authenticated?	

	def index
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

		@pages = Page.all
	end

	# display new page form
	def new
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

		@page = Page.new
	end

	# create new page
	def create
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

	end

	# edit the page
	def edit
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)
		# binding.pry
		@page = find_page_by_id
	end

	def update
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)
		page_id = params[:id]
		page_to_update = @user.pages.find_by_id(page_id)
		page = params[:page].permit(:title, :content)

		page_to_update.update_attributes(page)

		redirect_to [@user, page_to_update]
	end

	# show one page
	def show
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

		if current_user != nil
			user_id.to_i == current_user.id { true } ? @editable = true : @editable = false
		end

		page_id = params[:id]
		@page = @user.pages.find_by_id(page_id)
	end

	# delete the page
	def destroy
		user_id = params[:user_id]
		page_id = params[:id]
		@user = User.find_by_id(user_id)

		page_to_delete = @user.pages.find_by_id(page_id)

		page_to_delete.destroy

		redirect_to [@user, page_to_delete]

	end

	private

	def find_page_by_id
		page_id = params[:id]
		@page = Page.find_by_id(page_id)
	end

end
