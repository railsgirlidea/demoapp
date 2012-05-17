# Container into which you will materialize the Salesforce objects.
module SFDC_Models
	client.sobject_module = "SFDC_Models"
        client.materialize("Account")
end
