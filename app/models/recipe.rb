class Recipe < ActiveRecord::Base
  acts_as_taggable_on :categories
  extend FriendlyId
  friendly_id :title, use: :slugged

  attr_accessible :cook_time, :directions, :ingredients, :post_id, :prep_time, :serves, :title, :category_list

  belongs_to :post

  def stats
    stats = []
    stats << "Serves: #{serves}" if serves.present?
    stats << "Prep Time: #{prep_time}" if prep_time.present?
    stats << "Cook Time: #{cook_time}" if cook_time.present?
    stats.join(" | ")
  end
end
