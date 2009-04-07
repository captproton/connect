class Postoffice < ActionMailer::Base
  # located in models/postoffice.rb
  # make note of the headers, content type, and time sent
  # these help prevent your email from being flagged as spam
  
  #Verizon: 10digitphonenumber@vtext.com 
  #AT&T: 10digitphonenumber@mobile.att.net 
  #Sprint: 10digitphonenumber@messaging.sprintpcs.com 
  #T-Mobile:  10digitphonenumber@tmomail.net  
  #Nextel:  10digitphonenumber@messaging.nextel.com 
  #Cingular:  10digitphonenumber@mobile.mycingular.com 
  #Virgin Mobile: 10digitphonenumber@vmobl.com 
  #Alltel: 10digitphonenumber@alltelmessage.com OR message.alltel.com 
  #CellularOne:  10digitphonenumber@mobile.celloneusa.com 
  #Omnipoint: 10digitphonenumber@omnipointpcs.com 
  #Qwest:  10digitphonenumber@qwestmp.com

    def welcome(name, email, home_phone, move_date, move_from_zip, move_size_id, move_to_city, special_instructions)
      @recipients   = [ "captproton <8015031355@tmomail.net>", "Carl Tanner <carl@betterbilling.net>", "Michael Tanner <8014994594@sms.mycricket.com>", "Home <8016881658@tmomail.net>" ] 
      @from         = "paloozahub@gmail.com"
      headers         "Reply-to" => "#{email}"
      @subject      = "New mover lead"
      @sent_on      = Time.now
      @content_type = "text/html"

      body[:name]  = name
      body[:email] = email       
      body[:home_phone] = home_phone       
      body[:move_date] = move_date       
      body[:move_from_zip] = move_from_zip       
      body[:move_size_id] = move_size_id       
      body[:move_to_city] = move_to_city       
      body[:special_instructions] = special_instructions       
      
    end
  

end
