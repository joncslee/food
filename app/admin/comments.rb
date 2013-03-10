ActiveAdmin.register Comment, :as => "Post Comment" do
  index do
    column :content
    column :post
    default_actions
  end
end
