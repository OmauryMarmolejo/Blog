class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:id])
    @comment = @post.comments.build(params[:comment])
    @comment.post = @post
    @post.user = current_user
    if @comment.save
      redirect_to post_path(@comment.post)
    else
      render 'new'
    end
    @comment = current_user.comments.new
    @comment.post_id = params[:post_id]
    @comment.save
    redirect_to post_path(@comment.post)
  end

  def comment_params
    params.require(:comment).permit(:user_id, :post_id,  :content)
  end
end
