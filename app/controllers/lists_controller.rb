class ListsController < ApplicationController
  
  def index
    @products = Product.joins(:list_items).all
  end
end
