class RemoveServesFromRecipes < ActiveRecord::Migration
  def up
    remove_column :recipes, :serves
  end

  def down
    add_column :recipes, :serves, :integer
  end
end
