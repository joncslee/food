class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_categories

  def get_categories
    @menu_categories = Recipe.tag_counts_on(:categories)
  end
end
