class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.column :status, :string
      t.column :account_id, :integer
      t.column :shipping, :decimal
      t.column :tax, :decimal
      t.column :subtotal, :decimal 
      t.column :total_price, :decimal
    end
  end
end
