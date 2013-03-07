class AddDurationsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :prep_time_hours, :integer
    add_column :recipes, :prep_time_minutes, :integer
    add_column :recipes, :cook_time_hours, :integer
    add_column :recipes, :cook_time_minutes, :integer

    remove_column :recipes, :prep_time
    remove_column :recipes, :cook_time
  end
end
