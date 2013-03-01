class Comment < ActiveRecord::Base
  attr_accessible :content, :email, :is_admin, :name, :post_id, :website

  belongs_to :post

  validates_presence_of :name, :email, :content
end
