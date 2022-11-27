class AddAuthorIdAndCategoryIdToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books , :author, foreign_key: true
    add_reference :books , :category, foreign_key: true
  end
end
