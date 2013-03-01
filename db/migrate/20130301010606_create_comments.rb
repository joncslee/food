class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.string :website
      t.text :content
      t.integer :post_id
      t.boolean :is_admin

      t.timestamps
    end
  end
end
