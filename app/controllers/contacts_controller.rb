class ContactsController < ApplicationController
 include Databasedotcom::Rails::Controller
	 
	  def index
	    @contacts = Contact.all()
	  end
	 
	  def show
	    @contact = Contact.find(params[:id])
          #   respartadd = ResPartnerAddress.new
          #   respartadd.name = @contact.Name 
          #   respartadd.street = @contact.MailingStreet
          #   respartadd.city = @contact.MailingCity 
          #   respartadd.state_id = @contact.MailingState
             #respartadd.country_id = @contact.MailingCountry
          #   respartadd.zip = @contact.OtherPostalCode
          #   respartadd.phone = @contact.Phone
         #    respartadd.email = @contact.Email
         #    respartadd.zip = @contact.MobilePhone
         #    respartadd.fax = @contact.Fax
        #     respartadd.fax = @contact.MobilePhone

          #   respart = ResPartner.new
          #   respartadd.partner_id = respart.id
           #  respart.active = 'TRUE' if @account.IsDeleted == 'false'
          #   respart.customer = 'TRUE'
           #  respart.supplier = 'TRUE'
           #  respart.save
	  end
end
