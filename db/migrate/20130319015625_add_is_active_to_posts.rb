class AddIsActiveToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :is_active, :boolean, :default => 0
  end
end
