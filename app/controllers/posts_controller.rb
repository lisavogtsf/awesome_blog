class PostsController < ApplicationController

	before_action :is_authenticated?

	def index

		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

		@posts = @user.posts.order('posts.created_at DESC')

		respond_to do |f|
			f.html
			f.json {render json: @posts}
		end
	end

	def new
		user_id = params[:user_id]
		@user = User.find_by_id(user_id)

		@post = @user.posts.new
	end

	def create

		# does not currently hadle duplicate tags in the same new post
		post_attr = params.require(:post).permit(:title, :content)
		post = find_user_by_id.posts.create(post_attr)
		tag_data = params[:tags].split(/\,\s*|\s*\#|\s+/)

		tag_data.each do |tag_str|
			tag = Tag.find_by_name(tag_str)
			if tag == nil
				tag = Tag.create(name: tag_str)
			end
			post.tags << tag
		end

		respond_to do |f|
			f.json {render :json => {post: post}}
			f.html
		end
	end

	def show
		@post = Post.find_by_id(params[:id])
		user_id = @post.user_id
		@user = User.find_by_id(user_id)

		if current_user != nil
			user_id.to_i == current_user.id { true } ? @editable = true : @editable = false
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
