class StoreController < ApplicationController
	include CurrentCart
	before_action :set_cart
	
  def index
  	if session[:counter].nil?
  		session[:counter] = 1
  	end
  	# @count = session[:counter] += 1
  	session[:counter] += 1
  	
  	@products = Product.order(:title)
  end
end
