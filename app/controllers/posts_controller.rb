class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def create
    post = Post.create(post_params)
    if post.persisted?
      render json: post
    end
  end

  def show
    post = Post.find(params[:id])
    render json: post
  end

  def update
    post = Post.find(params[:id])
    post.update(update_params)
    render json: post
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:category_id, :title, :description, :author)
  end

  def update_params
    params.require(:post).permit(:category_id, :title, :description, :author)
  end
end
