class ProductsController < ApplicationController
include Databasedotcom::Rails::Controller
	 
	  def index
	    @products = Product.all()
	  end
	 
	  def show
	    @product = Product.find(params[:id])
	  end

end
