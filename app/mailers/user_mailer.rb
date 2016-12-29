class UserMailer < ApplicationMailer
  default from: "from@example.com"

	def contact_form(email, name, message)
    @message = message
      mail(:from => email, 
        :to => 'jochum.de.bueger@gmail.com', 
        :subject => "A new contact form message from #{name}")
    end

    def welcome(user)
    	@appname = "Berlin Bikes"
    	mail( :to => user.email,
    		  :subject => "Thank you for your interest in #{@appname}")
    	
    end


end
