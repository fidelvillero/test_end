class UserMailer < ActionMailer::Base
  default :from => "testkoombea@gmail.com"
  
  def registration_confirmation(user, typeMessage)
    p ">>>>>>type Edit>>>>>>>>> " + typeMessage
    p ">>>>>> email >>>>>>>>> " + user
    @message = typeMessage
    if typeMessage.eql?("cancellation")
      p ">>>> URL <<<<<<<" + "#{Rails.root}"
      #debugger
      #attachments["koombea.jpg"] = File.read("#{Rails.root}/public/images/koombea.jpg")
      mail(:to => user, :subject => "Cancellation appointment")  
      p "<<<<<<<<<<<<<<< fin <<<<<<<<<<<<<<<<<<<<<<<"
    end
  end
  
end
