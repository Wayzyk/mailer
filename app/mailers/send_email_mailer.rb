class SendEmailMailer < ApplicationMailer
  default from: "test@test.com"
  after_action :log_email

  def send_email(user)
    @user = user
    mail(
      to: @user.email,
      subject: @user.full_name
    )
  end

  def greeting_email(user)
    @user = user
    mail(
      to: @user.email,
      subject: @user.full_name,
      first_name: @user.first_name,
      last_name: @user.last_name,
      phone: @user.phone
    )
  end

  private
  
  def log_email
    mailer_class = self.class.to_s
    mailer_action = self.action_name
    EmailLog.log("#{mailer_class}##{mailer_action}", message)
  end
end
