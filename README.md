Setup project:
- git clone
- bundle install

Create user:
- rails c
- FactoryBot.create(:user)

Send email:
user = User.last/ User.first/ User.find :id
#Testmail
- SendEmailMailer.send_email(user).deliver

#GreetingMail
- SendEmailMailer.greeting_email(user).deliver

Send sms:

#for sending sms you should create trial account on twilio and puts values
# to credentials.yml. In console paste this code 'cp credentials.yml.enc credentials.yml ' 
- TwilioClient.new.send_text(user, 'your message')
