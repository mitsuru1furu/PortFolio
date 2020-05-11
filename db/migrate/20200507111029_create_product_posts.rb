class CreateProductPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_posts do |t|
    	t.integer :product_id
    	t.integer :user_id
    	t.string :post_title
    	t.string :post_comment
    	t.string :post_image_id
      t.timestamps
    end
  end
end
