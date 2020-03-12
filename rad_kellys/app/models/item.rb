class Item < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :picture
  
end
