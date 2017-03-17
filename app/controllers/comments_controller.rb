class CommentsController < ApplicationController
  include CommentsHelper

  before_action :find_commentable
  before_action :authenticate_user!, :except => [:index]

   def new
     @comment = Comment.new
   end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
