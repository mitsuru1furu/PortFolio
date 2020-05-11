class ProductPostsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@product_post = @product.product_posts.new(product_post_params)
		@product_post.user_id = current_user.id
		@product_post.save
		redirect_back fallback_location: @product
	end

	private
	def product_post_params
		params.require(:product_post).permit(:post_title,:post_comment,:post_image)
	end
end
