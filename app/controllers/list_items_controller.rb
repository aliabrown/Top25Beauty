class ListItemsController < ApplicationController
  def index
  	@list_items = ListItem.all
  end

  def new
  	@list_item = ListItem.new
  end

  def create
  	@list_item = ListItem.create
  	redirect_to action: 'index'
  end
end
