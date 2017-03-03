class PostsController < ApplicationController
  include PostsHelper
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment.post_id = @post.id
  end

  def new
    @post = current_user.post.build
  end

  def create
    @post = current_user.post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end

  end

  def destroy
    @post =  Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    flash.notice = "Post '#{@post.title}' updated"

    redirect_to post_path(@post)
  end
end
