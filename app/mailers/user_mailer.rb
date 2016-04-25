class UserMailer < ApplicationMailer
	default from: "bukvic.danielle@gmail.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => email, :to => 'bukvic.danielle@gmail.com', :subject => "A new contact form message from #{name}")
	end
end
