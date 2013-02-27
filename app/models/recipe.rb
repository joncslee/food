class Recipe < ActiveRecord::Base
  acts_as_taggable_on :categories
  extend FriendlyId
  friendly_id :title, use: :slugged

  attr_accessible :cook_time, :directions, :ingredients, :post_id, :prep_time, :serves, :title, :category_list

  belongs_to :post
end
