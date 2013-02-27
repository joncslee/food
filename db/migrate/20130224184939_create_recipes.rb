class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :prep_time
      t.string :cook_time
      t.integer :serves
      t.text :ingredients
      t.text :directions
      t.integer :post_id

      t.timestamps
    end
  end
end
