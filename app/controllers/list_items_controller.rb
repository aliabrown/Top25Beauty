class ListItemsController < ApplicationController
  def index
  	@list_items = current_user.list_items.all
  end

  def new
  	@list_item = current_user.build_list_items
  end

  def create
  	@list_item = current_user.build_list_items(list_item_params)
  	redirect_to action: 'index'
  end
end

private

  def list_item_params
    params.require(:list_item).permit(:user_id, :product_id)
  end