class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
    	t.string :price
    	t.string :introduction
    	t.string :product_image_id
      t.timestamps
    end
  end
end
