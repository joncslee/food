class PostsController < ApplicationController
  def index
    @posts = Post.all(:order => 'created_at DESC', :limit => 20)
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
