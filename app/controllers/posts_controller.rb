class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find_by(params[:id])
    @post = Post.assign_attributes(post_params(:title, :category, :content))
    if @post.valid?
      @post.update(post_params(:title, :category, :content))
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params(*args)
    params.require(:posts).permit(*args)
  end
end
