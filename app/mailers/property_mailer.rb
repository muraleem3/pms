class PropertyMailer < ActionMailer::Base
  default from: 'no-reply@example.com'
  def registration_confirmation(property)
    @property = property
    @url  = 'http://localhost:3000/users/sign_in'
    mail(:to => property.user.email, subject: 'Welcome to My Awesome Site')
  end
  
  def match_property()
    @matches = []
    Property.buyers.each do |property|
      @matches = Property.sellers.belongs_to_location(property.property_location)
      mail(:to => property.user.email, subject: 'Welcome to My Awesome Site')
    end
  end
 # def deliver  
  #  property = Property.find(params[:id])  
   # property.send_later(:deliver)  
    #flash[:notice] = "property delivered"  
    #redirect_to properties_url  
  #end  

def  Clockwork
  puts "testing clockwork!"
  every(30.seconds, 'Send Messages') {
    rake 'scheduler:send_messages'
    mail(:to => "swamy@ostryalabs.com", subject: 'hello')
    }
   
end
end
