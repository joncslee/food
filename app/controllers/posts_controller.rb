class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def recipes
    @posts = Post.where("kind = ?", 'recipe')
  end

  def show
    @post = Post.find(params[:id])
  end

  def archive
    @category = params[:id]
    @posts = Post.tagged_with(@category)
  end
end
