class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      ExampleMailer.sample_email(@user).deliver
    else
      raise error: "Can't deliver email"
    end
  end
end
