ActiveAdmin.register Recipe do
  form do |f|
    f.inputs do
      f.input :post, :required => true
      f.input :title, :required => true
      f.input :prep_time
      f.input :cook_time
      f.input :serves
      f.input :ingredients, :required => true
      f.input :directions, :required => true
      f.input :category_list, :required => true
    end
    f.buttons
  end
end
