class FixPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :kind
  end
end
