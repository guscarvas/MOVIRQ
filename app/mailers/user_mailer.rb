class UserMailer < ApplicationMailer

def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Bem vindo ao MOVIRQ')
end

def reserva_pontual(user)
    @user = user
    mail(to: "laausp@usp.br", subject: "Reserva Pontual")
end

def forgot_password(user)
	@user = user
    mail(to: @user.email, subject: 'Recuperação de senha MOVIRQ')
    
end

#def password_reset(user)
#    @user = user
#    mail(to: @user.email, subject: "Resetar senha")

#end

end
