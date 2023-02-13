class Item < ApplicationRecord
  belongs_to :restaurant
  belongs_to :categary
  has_many :food_items
  has_many :carts, :through => :food_items
end