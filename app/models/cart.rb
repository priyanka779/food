class Cart < ApplicationRecord
  belongs_to :user
  has_many :items, :through => :food_items
  has_many :food_items
end
