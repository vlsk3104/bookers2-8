# class ThanksMailer < ApplicationMailer
#   default from: 'no-replay@gmail.com'

#   def complete_mail(user)
#     @user = user
#     @url = "http://localhost:3000/users/#{@user.id}"
#     mail(subject: "会員登録が完了しました。" ,to: @user.email)
#   end
# end

class ThanksMailer < Devise::Mailer

	  default from: 'no-replay@gmail.com'

  def user_welcome_mail(user)
    @user = user
    @url = "http://localhost:3000/users/#{@user.id}"
    mail(subject: "会員登録が完了しました。" ,to: @user.email)
  end

end