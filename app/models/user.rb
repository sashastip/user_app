class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_email_registration

  def send_email_registration
    UserMailer.email_registration(self).deliver_now
  end
end
