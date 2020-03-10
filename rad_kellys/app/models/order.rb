class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item

  def self.previous_orders(user)
    orders = Order.where(user_id: user).reverse_order
  end

  # gets the information of a purchased item
  def self.purchased_item(item_id)
    order = Order.where(item_id: item_id)
  end



end
