class Category < ApplicationRecord
  has_many :posts
  enum category_type: {
    "Learning" => 0,
    "Entertainment" => 1,
    "Sports" => 2,
  }
  validates :title, format: { with: /\w{3,20}/i, message: "Title not invalid!" }
  validates :description, length: { maximum: 100 }
end
