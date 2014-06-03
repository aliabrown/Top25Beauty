class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.find_or_create_by(product_params)
		if @product.present?
			@list_item = ListItem.create( user_id: current_user.id, product_id: @product.id )
      redirect_to list_items_path
		else
			redirect_to :back
		end
	end
end

	private

  def product_params
    params.require(:product).permit(:name, :image, :link)
  end