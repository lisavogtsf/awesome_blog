class CommentsController < ApplicationController

  # no need for index
  # comments will always only be displayed in context with their parent
  before_action :find_parent, :find_post

before_action :is_authenticated?	

  def create
    @parent.comments.create(get_comment_attr)
    redirect_to_post 
  end

  def destroy
    comment_by_id.destroy
  end

  private

    def comment_by_id
      Comment.find_by_id(params[:id])
    end

    def get_comment_attr
      params.require(:comment).permit(:title, :body)
    end

      def redirect_to_post
        redirect_to user_post_path @post.user_id, @post.id
      end

    def find_parent
      @parent = Post.find_by_id((params[:post_id]).to_i)
      if params[:id]
        @parent = Comment.find_by_id((params[:id]).to_i)
      end
    end

    def find_post
      @post = Post.find_by_id(params[:post_id])
    end

    def redirect_to_post
      redirect_to user_post_path @post.user_id, @post.id
    end
end
