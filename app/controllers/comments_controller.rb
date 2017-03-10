class CommentsController < ApplicationController

  before_action :authenticate_user!, :except => [:index]
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
    redirect_to post_path(@comment.post)
    else
      render to post_path
    end
  end

  def comment_params
    params.require(:comment).permit(:user_id, :content)
  end
end
