class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@products = Product.new
	end

	def create
		@product = Product.find_or_create_by(product_params)

		if @product.create
			list_item = List_item.new( user_id: current_user.id, product_id: @product.id )
      		list_item.save
		else
			redirect_to :back
		end
	end
end

	private

  def user_params
    params.require(:product).permit(:name, :image, :link)
  end