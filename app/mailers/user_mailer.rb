class UserMailer < ActionMailer::Base
  default from: "noReply@rottenMangoes.com"

  def withdraw_user_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email,
     subject: 'Withdrawn from team Rotten Mangoes') do |format|
      format.html { render 'withdraw_user_email' }
      format.text { render text: 'withdraw_user_email' }
    end
  end
end
