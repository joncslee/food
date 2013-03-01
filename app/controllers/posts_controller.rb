class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def recipes
    @posts = Post.where("kind = ?", 'recipe')
  end

  def show
    @post = Post.find(params[:id])
    @post.increment!(:impressions)
    @comment = Comment.new
  end

  def archive
    @category = params[:id]
    @posts = Post.tagged_with(@category)
  end
end
