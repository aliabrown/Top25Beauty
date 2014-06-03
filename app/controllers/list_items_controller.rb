class ListItemsController < ApplicationController
  def index
  	@list_items = current_user.list_items.all
  end

  def create
  	@list_item = current_user.list!(list_item_params)
  	redirect_to :back
  end

  def destroy
    @list_item = ListItem.find(params[:id]).destroy
    redirect_to :back
  end

private

  def list_item_params
    params.require(:list_item).permit(:user_id, :product_id)
  end

end