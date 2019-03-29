class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.assign_attributes(post_params)
    if @post.valid?
      @post.update(post_params)
      redirect_to post_path(@post)
    end
    render :edit
  end

  private

  def post_params
    params.require(:post).permit(:title, :category, :content)
  end
end
