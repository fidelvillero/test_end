class UserMailer < ActionMailer::Base
  default :from => "testkoombea@gmail.com"
  
  def registration_confirmation(user, typeMessage)
    @message = typeMessage
    if typeMessage.eql?("cancellation")
      attachments["koombea.jpg"] = File.read("#{Rails.root}/public/images/koombea.jpg")
      mail(:to => user, :subject => "Cancellation appointment")  
    end
  end
  
end
