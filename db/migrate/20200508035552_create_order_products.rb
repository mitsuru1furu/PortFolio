class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
    	t.integer :product_id
    	t.integer :user_id
    	t.string  :total_price
    	t.integer :payment,default: 0
      t.timestamps
    end
  end
end
