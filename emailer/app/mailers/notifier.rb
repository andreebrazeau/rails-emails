class Notifier < ActionMailer::Base
  	def send_email(email)
  		@email = email
  		mail(:from =>email.from, :to => email.to, :subject => email.subject)
	end
end
