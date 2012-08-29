
ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "your_domaine.com",
   :authentication => "plain",
   :user_name => "user_name",
   :password => "password",
}
