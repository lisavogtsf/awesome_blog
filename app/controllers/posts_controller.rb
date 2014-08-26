class PostsController < ApplicationController

	before_action :is_authenticated?

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

		post_attr = params.require(:post).permit(:title, :content)
		post = find_user_by_id.posts.create(post_attr)
		redirect_to [@user, post]
	end

	def show
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

		if current_user != nil
			user_id == current_user.id { true } ? @editable = true : @editable = false
		end

		post_id = params[:id]
		@post = @user.posts.find_by_id(post_id)

		@comments = @post.comments
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

		@comments = @post.comments
		@comments.each do |comment|
			comment.destroy
		end

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
