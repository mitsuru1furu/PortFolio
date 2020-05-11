class ProductPost < ApplicationRecord
	attachment :post_image
	belongs_to :user
	belongs_to :product
end
