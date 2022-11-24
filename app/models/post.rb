class Post < ApplicationRecord
  belongs_to :category
  default_scope -> { where(status: true).order(created_at: :desc) }
end
