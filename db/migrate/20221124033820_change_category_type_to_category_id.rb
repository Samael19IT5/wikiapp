class ChangeCategoryTypeToCategoryId < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :category_type, :category_id
  end
end
