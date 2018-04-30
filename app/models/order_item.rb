class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  # validates :quantity, :presence => true
  # validates :product_id, :presence => true
  # validates :order_id, :presence => true
end
