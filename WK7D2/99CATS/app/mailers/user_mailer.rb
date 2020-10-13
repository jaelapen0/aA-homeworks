class UserMailer < ApplicationMailer
    default from: 'everbody@appacademy.io'

    def welcome_email(user)
        @user = user
        @url = 'http://jae.song/login'
        mail(to: user.username, subject: 'Welcome to 99 cats')
    end
end
