class AddImpressionsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :impressions, :integer, :default => 0
  end
end
