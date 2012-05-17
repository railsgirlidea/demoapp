
require 'rubygems'
require 'ooor'

class AccountsController < ApplicationController
include Databasedotcom::Rails::Controller
	 
	  def index
            @accounts = Account.all()  #salesforce
	  end
	 
	  def show
	    @account = Account.find(params[:id])
            respart = ResPartner.new   #oor
            respart.name = @account.Name
            respart.active = 'TRUE' if @account.IsDeleted == 'false'
            respart.customer = 'TRUE'
            respart.supplier = 'TRUE'
            respart.website = @account.Website
            respart.save   
            #respart.parent_id = @accounts.ParentId
            #respart.name = @accounts.Parent

            respartadd = ResPartnerAddress.new
            respartadd.partner_id = respart.id
            rescountry = ResCountry.new
            respartadd.country_id = rescountry.id
          #  respartadd.type = 'invoice'
          #  respartadd.type = 'delivery'
      #    if @account.BillingStreet          
               respartadd.street = @account.BillingStreet
               respartadd.city = @account.BillingCity
               rescountrystate = ResCountryState.new
               respartadd.zip = @account.BillingPostalCode
               respartadd.phone = @account.Phone
               respartadd.fax = @account.Fax
               respartadd.name = @account.BillingCountry
              # respartadd.mobile = @account.MobilePhone
            
             #  respartadd.street = @contact.MailingStreet
             #  respartadd.city = @contact.MailingCity 
            #   respartadd.state_id = @contact.MailingState
             #  respartadd.country_id = @contact.MailingCountry
             #  respartadd.zip = @contact.MailingPostalCode
             #  respartadd.email = @contact.Email
             #  respartadd.zip = @contact.MobilePhone
             #  respartadd.fax = @contact.Fax
             #  respartadd.fax = @contact.MobilePhone
              


               puts "rescountrystate.name>>>>>>>>>>"
	       p respartadd
	       puts "============================="
	       p ResCountryState.find(1)
	       puts "**************************************"
               p respartadd
               p rescountrystate
             #  p @account.BillingState
               puts "**************************************"
        
               

              #  if ResCountryState.name = @account.BillingState
             #   respartadd.state_id = ResCountryState.id
             # else
              #  ResCountryState.create(:id=>53,:name=>'UK')
             # end
	     # rescountry = ResCountry.new
             #  if rescountry.name == @account.BillingCountry
             #  respartadd.country = rescountry.id
             # end
              
            
              respartadd.type = 'invoice'
              respartadd.save  
         #   end 

        #   if @account.ShippingStreet
               respartadd.street = @account.ShippingStreet
               respartadd.city = @account.ShippingCity
               respartadd.zip = @account.ShippingPostalCode
             #  respartadd.state_id = @account.ShippingState
              # respartadd.country_id = @account.ShippingCountry
               respartadd.type = 'delivery'
               respartadd.save
         #  end
       end
end
