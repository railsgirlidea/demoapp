class LeadsController < ApplicationController

include Databasedotcom::Rails::Controller
	 
	  def index
	    @leads= Lead.all()[0..19]
	  end
	 
	  def show
	    @lead = Lead.find(params[:id])
	  end
end
