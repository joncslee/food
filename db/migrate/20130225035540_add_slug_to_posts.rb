class AddSlugToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :slug, :string
    add_column :recipes, :slug, :string

    add_index :posts, :slug, unique: true
    add_index :recipes, :slug, unique: true
  end
end
