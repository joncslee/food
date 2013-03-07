ActiveAdmin.register Recipe do
  index do
    column "Title" do |recipe|
      link_to recipe.title, admin_recipe_path(recipe)
    end
  end

  form do |f|
    f.inputs do
      f.input :post, :required => true
      f.input :title, :required => true
      f.input :prep_time
      f.input :cook_time
      f.input :serves
      f.input :ingredients, :required => true
      f.input :directions, :required => true
      f.input :category_list, :required => true, :as => :check_boxes, :collection => ApplicationHelper::RECIPE_CATEGORIES
    end
    f.buttons
  end
end
