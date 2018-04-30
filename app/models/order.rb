class Order < ActiveRecord::Base
  # belongs_to :account
  has_many :order_items
  # validates :status, :presence => true
  # validates :account_id, :presence => true
  # validates :shipping, :presence => true
  # validates :tax, :presence => true
  # validates :subtotal, :presence => true
  # validates :total_price, :presence => true
end
