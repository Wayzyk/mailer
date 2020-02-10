class User < ApplicationRecord

  validates :first_name, :last_name, :email, :phone, presence: true
  def full_name
    # self.first_name + self.last_name
    "#{self.first_name} #{self.last_name}"
  end
end
