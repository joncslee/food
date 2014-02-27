class Comment < ActiveRecord::Base
  include Rakismet::Model

  attr_accessible :content, :email, :is_admin, :name, :post_id, :website

  belongs_to :post

  validates_presence_of :name, :email, :content

  rakismet_attrs :author => :name, :author_email => :email, :author_url => :website
end
