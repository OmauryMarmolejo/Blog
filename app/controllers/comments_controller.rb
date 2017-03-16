class CommentsController < ApplicationController
  before_action :find_commentable
  before_action :authenticate_user!, :except => [:index]
 def new
   @comment = Comment.new
 #  @comment.post_id = @post.id
 end
  def create
   # @post = Post.find(params[:post_id])
   # @comment = @post.comments.build(comment_params)
    @comment = @commentable.comments.new comment_params
    @comment.user = current_user
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :content)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
  end
end
