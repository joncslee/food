class Restaurant < ActiveRecord::Base
  acts_as_taggable_on :categories
  attr_accessible :city, :description, :hours, :name, :phone, :post_id, :state, :street, :website, :zipcode, :category_list

  belongs_to :post
end
