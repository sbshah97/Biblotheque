# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :address => "smtp.mandrillapp.com",
   :port => 587,
   :domain => "mandrillapp.com",
   :authentication => :login,
   :user_name => "vicky8rk@gmail.com",
   :password => "yhoSePw3hCsK4IEFdE0FoA",
   :enable_starttls_auto => true
}
