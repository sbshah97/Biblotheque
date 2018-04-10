# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :address => "smtp.iris.nitk.ac.in",
   :port => 587,
   :domain => "library.nitk.ac.in",
   :authentication => :login,
   :user_name => "15it241.salman@nitk.edu.com",
   :password => "salman@123",
   :enable_starttls_auto => true
}
