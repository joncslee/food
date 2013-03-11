ActiveAdmin.register Book do
  index do
    column "Title" do |book|
      link_to book.title, admin_book_path(book)
    end
    column :author
  end

end
