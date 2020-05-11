class Product < ApplicationRecord
	attachment :product_image
	has_many :product_posts
	has_many :order_products
end
