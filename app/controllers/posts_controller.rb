class PostsController < ApplicationController
	def index 

	end

	def new

		@posts = Post.all
	end

	def new
		@post = Post.new
 
	end

	def create
	end

	def show
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
