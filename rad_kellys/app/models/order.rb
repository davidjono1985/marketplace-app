class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item

#method for checking if the item already exists in user's list

  def self.contains?(current_user, item)
  return current_user.items.where(id: item).length > 0
  
  
  end
  
  
  
  
  # def self.previous_orders(user)
  #   orders = Order.where(user_id: user).reverse_order
  # end

  # # gets the information of a purchased item
  # def self.purchased_item(item_id)
  #   order = Order.where(item_id: item_id)
  # end



end
