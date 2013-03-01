ActiveAdmin.register Comment, :as => "Post Comment" do
  index do
    column :content
    column :post
  end
end
