class CommentsController < ApplicationController

	# no need for index
	# comments will always only be displayed in context with their parent

	def create
		comment_attr = params.require(:comment).permit(:title, :body)
		user_by_id.post_by_id.comments.create(comment_attr)
	end

	def edit
		@user = user_by_id
		@context = context
		@comment = context.comments.find_by_id(params[:id])
	end

	def update
		@user = user_by_id
		@post = post_by_id
		comment = comment_by_id
		comment_attributes = get_comment_attr
		comment.update_attributes(comment_attributes)

		redirect_to [@user, @post]
	end

	def destroy
		comment = comment_by_id
		comment_by_id.destroy
	end

	private

	def user_by_id
		User.find_by_id(params[:user_id])
	end

	def post_by_id
		Post.find_by_id(params[:post_id])
	end

	def comment_by_id
		Comment.find_by_id(params[:id])
	end

	def get_comment_attr
		params.require(:comment).permit(:title, :body)
	end

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
