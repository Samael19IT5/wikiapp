class Order < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :order_details
end
