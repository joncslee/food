class PostsController < ApplicationController
  def index
    @posts = Post.limit(10).reverse
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
    @posts = Post.all
  end

  def category
    @category = params[:id]
    if @category == 'all'
      @posts = Post.all
    else
      @posts = Post.tagged_with(@category)
    end
  end
end
