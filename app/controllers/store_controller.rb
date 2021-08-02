class StoreController < ApplicationController
	include CurrentCart
	before_action :set_cart
  skip_before_action :authorize
	
  def index
  	if session[:counter].nil?
  		session[:counter] = 1
  	end
  	# @count = session[:counter] += 1
  	session[:counter] += 1
  	
    if params[:set_locale]
      # redirect_to store_index_url(locale: params[:set_locale])
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
  end
end
