class CommentsController < ApplicationController

	# no need for index
	# comments will always only be displayed in context with their parent

	def show
		@comment = Comment.find_by_id[:id]
		@comments = @comment.comments
	end

	def new
		@user = User.find_by_id(params[:user_id])
		@post = Post.find_by_id(params[:post_id])
		@context = context
		@comment = @context.comments.new
	end

	def create
	end

	def edit
		@user = User.find_by_id(params[:user_id])
		@context = context
		@comment = context.comments.find_by_id(params[:id])
	end

	def update
		comment = Comment.find_by_id(params[:id])
		comment_attributes = params.require(:comment).permit(:title, :body)
		comment.update_attributes(comment_attributes)
	end

	def destroy
	end

	private

	def context
		if params[:post_id]
			Post.find_by_id(params[:post_id])
		elsif params[:comment_id]
			Comment.find_by_id(params[:comment_id])
		else 
			@error = "Error! Context not found!"
		end
	end
end
