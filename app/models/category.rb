class Category < ApplicationRecord
  has_many :posts
  has_many :books
  enum category_type: {
    "Learning" => 0,
    "Entertainment" => 1,
    "Sports" => 2,
  }
end
