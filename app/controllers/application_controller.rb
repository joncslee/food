class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_posts

  before_filter :get_categories

  def get_categories
    @menu_categories = Recipe.tag_counts_on(:categories)
  end

  def get_posts
    @new_posts = Post.all(:order => 'created_at DESC', :limit => 5)
    @top_posts = Post.all(:order => 'impressions DESC', :limit => 5)
  end

end
