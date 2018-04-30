class Product < ActiveRecord::Base
  validates :price, :name, :presence => true
  has_many :order_items
end
