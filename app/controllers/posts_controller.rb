class PostsController < ApplicationController
	def index
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

		@posts = @user.posts.order('posts.created_at DESC')
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
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

		post_id = params[:id]
		@post = @user.posts.find_by_id(post_id)
	end

	def update
		find_user_by_id
		post_id = params[:id]
		post = params[:post].permit(:title, :content)

		post_to_update = @user.posts.find_by_id(post_id)
		@post = post_to_update.update_attributes(post)

		redirect_to [@user, post_to_update]
	end

	def destroy
		find_user_by_id
		post_id = params[:id]
		@post = @user.posts.find_by_id(post_id)

		@post.destroy

		redirect_to [@user, @post]
	end

	private

	def get_post_by_id
		id = params[:id]
		Post.find_by_id(id)
	end

	def find_user_by_id
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)
	end

end
