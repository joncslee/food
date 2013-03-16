ActiveAdmin.register Restaurant do
  index do
    column "Name" do |restaurant|
      link_to restaurant.name, admin_restaurant_path(restaurant)
    end
  end

  form do |f|
    f.inputs do
      f.input :post, :required => true
      f.input :name, :required => true
      f.input :website, :required => true
      f.input :phone, :required => true
      f.input :hours
      f.input :description, :required => true
      f.input :category_list, :required => true, :as => :check_boxes, :collection => ApplicationHelper::RESTAURANT_CATEGORIES
    end

    f.inputs "Contact Info" do
      f.input :street
      f.input :city
      f.input :state
      f.input :zipcode
    end

    f.buttons
  end
end
