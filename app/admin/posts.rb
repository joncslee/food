ActiveAdmin.register Post do
  index do
    column "Title" do |post|
      link_to post.title, admin_post_path(post)
    end
    column :kind
    column :is_active
    column "" do |post|
      link_to "View", post
    end
  end

  form do |f|
    f.inputs do
      f.input :kind, :as => :select, :collection => { 'Blog' => 'blog', 'Recipe' => 'recipe', 'Restaurant' => 'restaurant' }, :required => true
      f.input :title, :required => true
      f.input :content, :as => :ckeditor, :required => true
      f.input :image
      f.input :is_active
    end
    f.buttons
  end

  action_item :only => :show do
    link_to "View", resource
  end
end
