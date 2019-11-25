class UserMailer < ApplicationMailer

def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Bem vindo ao MOVIRQ')
end

def forgot_password(user)
	@user = user
	mail(to: @user.email, subject: 'Recuperação de senha MOVIRQ')

def password_reset(user)
    @user = user
    mail :to => user.email, :subjet => "Resetar senha"

end
