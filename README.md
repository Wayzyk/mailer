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
