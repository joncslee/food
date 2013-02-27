class Post < ActiveRecord::Base
  acts_as_tagger
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  attr_accessible :title, :content, :kind

  has_many :recipes

  def categories
    recipes.map{|r| r.categories }.flatten.compact.uniq{|r| r.name }
  end

  def archive_title
    if recipes && recipes.count > 1
      t = "#{title} (#{recipes.count} recipes)"
    else
      t = title
    end
    t
  end

  def self.tagged_with(category)
    posts = Recipe.all.map{|r| r.post if r.category_list.include?(category) }.compact.uniq{|p| p.id}
    posts
  end
end
