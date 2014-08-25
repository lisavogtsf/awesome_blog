class CommentsController < ApplicationController

	# no need for index or show for polymorphic comments
	# comments will always only be display in context with their parent

	def new
		@context = context
		@comment = @context.comments.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def context
		if params[:post_id]
			Post.find_by_id(params[:post_id])
		else
			Comment.find_by_id(params[:comment_id])
		end
	end
end
