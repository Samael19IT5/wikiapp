class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :orders
  has_many :order_details

end
