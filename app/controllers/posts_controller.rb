class PostsController < ApplicationController
	def index 
		@posts = Post.all
	end

	def new
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)
		@post = @user.posts.new
	end

	def create
	end

	def show
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)
		post_id = params[:id]

		@post = @user.posts.find_by_id(post_id)
	end

	def edit 
		@post = get_post_by_id
	end

	def update
	end

	def destroy
	end	 

	private 

	def get_post_by_id
		id = params[:id]
		Post.find_by_id(id)
	end
 
end
