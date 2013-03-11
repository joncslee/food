class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :amazon_link
      t.text :description

      t.timestamps
    end
  end
end
