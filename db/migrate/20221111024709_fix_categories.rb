class FixCategories < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :type, :category_type
    change_column :categories, :category_type, :integer
  end
end
