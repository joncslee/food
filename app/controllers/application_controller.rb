class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_posts

  before_filter :get_categories

  before_filter :get_books

  def get_categories
    @menu_categories = Recipe.tag_counts_on(:categories).sort_by {|c| c.name }
  end

  def get_posts
    @top_recipes = Post.where(:kind => 'recipe').order('impressions DESC').limit(5)
    @top_restaurants = Post.where(:kind => 'restaurant').order('impressions DESC').limit(5)
  end

  def get_books
    @all_books = Book.all(:order => 'created_at DESC')
  end

end
