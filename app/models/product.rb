class Product < ActiveRecord::Base
  has_many :list_items
  has_many :users
	
end
