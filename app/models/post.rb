class Post < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :category

  validates :title, format: { with: /\w{3,25}/i, message: "Title not invalid!" }
  validates :description, length: { maximum: 100 }
  validates :author, format: { with: /\w{2,20}/i, message: "Author not invalid!" }
end
