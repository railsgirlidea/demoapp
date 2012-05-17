
require 'rubygems'
require 'ooor'

class ApplicationController < ActionController::Base
  protect_from_forgery

   puts">>>>>>>>>>>>>>>>>>Connecting to ooor >>>>>>>>>>>>>>>>>>>>>>>>>>>"
   Ooor.new(:url => 'http://localhost:8069/xmlrpc', :database => 'demoapp', :username => 'admin', :password => 'admin')
   puts">>>>>>>>>>>>>>>>>>Connected to ooor >>>>>>>>>>>>>>>>>>>>>>>>>>>"
 

end
