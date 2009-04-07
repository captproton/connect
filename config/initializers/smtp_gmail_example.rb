require "smtp_tls" 
ActionMailer::Base.smtp_settings = { 
:address => "smtp.gmail.com", 
:port => 587, 
:user_name => "yourgmail_acct@gmail.com", 
:password => "yourgmail_password", 
:authentication => :plain 
}