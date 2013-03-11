class Book < ActiveRecord::Base
  attr_accessible :amazon_link, :author, :description, :title
end
