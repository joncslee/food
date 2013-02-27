class FixPostTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :posts, :post_type, :kind
  end
end
