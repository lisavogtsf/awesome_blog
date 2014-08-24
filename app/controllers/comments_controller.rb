class CommentsController < ApplicationController

	# no need for index or show for polymorphic comments
	# comments will always only be display in context with their parent

	def new
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
			Post.find(params[:post_id])
		else
			Comment.find(params[:comment_id])
		end
	end
end
