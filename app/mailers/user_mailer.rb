class UserMailer < ApplicationMailer
  default from: 'alex.stipanenko@gmail.com'

  def email_registration(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: @user.email, subject: "Welcome to My Awesome Site")
  end
end
