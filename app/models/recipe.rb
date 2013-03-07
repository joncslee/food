class Recipe < ActiveRecord::Base
  acts_as_taggable_on :categories
  extend FriendlyId
  friendly_id :title, use: :slugged

  attr_accessible :cook_time_hours, :cook_time_minutes, :directions, :ingredients, :post_id, :prep_time_hours, :prep_time_minutes, :serves, :title, :category_list

  belongs_to :post

  def prep_time
    time = [] 
    time << "#{prep_time_hours} Hours" if prep_time_hours.present?
    time << "#{prep_time_minutes} Minutes" if prep_time_minutes.present?
    (time == []) ? nil : time.join(' ')
  end

  def prep_time_8601
    Duration.new(:hours => prep_time_hours, :minutes => prep_time_minutes).iso8601
  end

  def cook_time
    time = [] 
    time << "#{cook_time_hours} Hours" if cook_time_hours.present?
    time << "#{cook_time_minutes} Minutes" if cook_time_minutes.present?
    (time == []) ? nil : time.join(' ')
  end

  def cook_time_8601
    Duration.new(:hours => cook_time_hours, :minutes => cook_time_minutes).iso8601
  end

  def stats
    stats = []
    stats << "Serves: #{serves}" if serves.present?
    stats << "Prep Time: <span class='preptime'>#{prep_time}<span class='value-title' title='#{prep_time_8601}'></span></span>" if prep_time.present?
    stats << "Cook Time: <span class='cooktime'>#{cook_time}<span class='value-title' title='#{cook_time_8601}'></span></span>" if cook_time.present?
    stats.join(" | ")
  end
end
