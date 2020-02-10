class EmailLog < ApplicationRecord

  def self.log(email_type, message)
    EmailLog.create(
      email_type: email_type,
      from: self.comma_separated(message.from),
      to: self.comma_separated(message.to),
      cc: self.comma_separated(message.cc),
      subject: message.subject,
      body: message.body)
  end

  private
  
  def self.comma_separated(arr)
    if !arr.nil? && !arr.empty?
      arr.join(",")
    else
      ""
    end
  end

end
