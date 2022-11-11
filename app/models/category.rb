class Category < ApplicationRecord
  has_many :posts
  enum category_type: {
    "Learning" => 0,
    "Entertainment" => 1,
    "Sports" => 2,
  }
end
