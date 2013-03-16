class AddAttributionToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :attribution_title, :string
    add_column :recipes, :attribution_url, :string
  end
end
