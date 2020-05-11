class ProductsController < ApplicationController
  def new
  end
  def show
  	@product = Product.find(params[:id])
  	@product_posts = @product.product_posts.all
  end
  def create
  	@product = Product.new(product_params)
  	@product.save
  	redirect_back fallback_location: @product
  end
  private
  def product_params
  	params.require(:product).permit(:name,:price,:introduction,:product_image)
  end
end
