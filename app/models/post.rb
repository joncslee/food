class Post < ActiveRecord::Base
  acts_as_tagger
  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :image, ImageUploader
  
  attr_accessible :title, :content, :kind, :image, :is_active

  has_many :recipes
  has_many :restaurants
  has_many :comments

  def categories
    recipes.map{|r| r.categories }.flatten.compact.uniq{|r| r.name }.sort_by! {|c| c.name }
  end
  def category_list
    categories = recipes.map{|r| r.categories }.flatten.compact.uniq{|r| r.name }.sort_by! {|c| c.name }.map {|c| c.name}

    list = ''
    categories.each do |c|
      list += "#{c}, "
    end
    list
  end

  def archive_title
    if recipes && recipes.count > 1
      t = "#{title} (#{recipes.count} recipes)"
    else
      t = title
    end
    t
  end

  def next
    Post.where("id > ?", id).order("id ASC").first
  end

  def prev
    Post.where("id < ?", id).order("id ASC").last
  end

  def self.tagged_with(category)
    posts = Recipe.all.map{|r| r.post if r.category_list.include?(category) }.compact.uniq{|p| p.id}
    posts
  end
end
