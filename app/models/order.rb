class Order < ActiveRecord::Base
  # belongs_to :account
  has_many :order_items
  before_save :update_total
  before_create :update_status

  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  # validates :status, :presence => true
  # validates :account_id, :presence => true
  # validates :shipping, :presence => true
  # validates :tax, :presence => true
  # validates :subtotal, :presence => true
  # validates :total_price, :presence => true

  private

  def update_status
    if self.status == nil?
      self.status = "In Progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end

end
