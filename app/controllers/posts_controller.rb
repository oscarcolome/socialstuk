class PostsController < ApplicationController

  before_action :set_post, only: [:edit, :update, :destroy]

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to user_path(@post.user.username), notice: 'Post Created'
    else
      redirect_to user_path(@post.user.username), error: 'Post not created'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to user_path(@post.user.username), notice: 'Post updated'
    else
      redirect_to post_path(@post), error: 'Post could not be updated.'
    end
  end

  def destroy
    @post.destroy
    redirect_to users_path(@post.user.username), notice: 'Post destroyed'
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
