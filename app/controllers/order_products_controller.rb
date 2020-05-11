class OrderProductsController < ApplicationController
	def new
		
	end
  def edit
  end

  def confirm

  end

  def done
  end

  def show
  	
  end
  def create
  	@product = Product.find(params[:product_id])
  	@order_product = @product.order_products.new(order_product_params)
  	@order_product.user_id = current_user.id

  	@order_product.save

  end

  private 

  def order_product_params
  	params.require(:order_product).permit(:total_price,:payment)
  end
end
