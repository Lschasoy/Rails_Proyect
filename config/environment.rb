# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!


ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {  
:enable_starttls_auto => true, 
:address              => "smtp.gmail.com",  
:port                 => 587,  
:domain               => "gmail.com",  
#Direcciones => micropost.ull , micropost2.ull , micropost3.ull , micropost4.ull
:user_name            => "micropost.ull@gmail.com",  
:password             => "micropost123456",  
:authentication       => "plain"  
}

