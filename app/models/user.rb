class User < ApplicationRecord
  has_many :orders
  enum level: {
    "Standard" => 0,
    "Premium" => 1,
    "VIP" => 2,
  }
end
