ActionMailer::Base.smtp_settings = {  
  :address => "smtp.gmail.com",  
  :port => "587",  
  :user_name => "fjvillerod@misena.edu.com"
  :password => "1104864712"
  #:user_name => "testkoombea@gmail.com",   myappkoombea@gmail.com, f1234567
  #:password => "koombea17",  
  :authentication => "plain",  
  :enable_starttls_auto => true  
}
  
ActionMailer::Base.default_url_options[:host] = "localhost:3000"