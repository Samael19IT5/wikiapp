class OrderController < ApplicationController

  STANDARD = 2
  PREMIUM = 5
  VIP = 10

  def total_price(order)
    details = OrderDetail.where('order_id=' + order.id)
    sum = 0
    details.each { |detail|
      book = Book.where('id=' + detail.book_id.to_s)
      sum += book.price * detail.quantity
    }
    sum
  end

  def price(order)
    user = User.where('id=' + order.user_id)
    if user.level == 0
      discount = STANDARD
    else
      if user.level == 1
        discount = PREMIUM
      else
        discount = VIP
      end
    end
    total_price(order) * (100 - discount) / 100
  end
end

