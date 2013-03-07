module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def yield_for(content_sym, default)
    output = content_for(content_sym)
    output = default if output.blank?
    output
  end

  RECIPE_CATEGORIES = {
    'appetizers' => 'appetizers',
    'sides' => 'sides',
    'mains' => 'mains',
    'breakfast' => 'breakfast',
    'sweets' => 'sweets',
    'snacks' => 'snacks',
    'vegetarian' => 'vegetarian',
    'sauces' => 'sauces',
    'soups' => 'soups'
  }
end
