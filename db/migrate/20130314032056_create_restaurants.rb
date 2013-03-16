class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :website
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.text :hours
      t.text :description
      t.integer :post_id

      t.timestamps
    end
  end
end
