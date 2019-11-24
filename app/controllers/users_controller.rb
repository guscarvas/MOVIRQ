class UsersController < ApplicationController
    before_action :correct_user?, only: [:edit, :update, :destroy]
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            #UserMailer.welcome_email(@user).deliver_now
            redirect_to @user, notice: "Usuário foi criado com sucesso!"
            #tire o método de comentário quando criar o helper.
            #Usuário depois de cadastrar-se acessa o sistema automaticamente
    #sign_in(@user)
        else 
    render action: :new
        end
    end
    def index
        @users = User.all
    end
    def show
        @user = User.find(params[:id])
    end
    def edit
        @user = User.find(params[:id]) 
    end
    
    def update
        @user = User.find(params[:id]) 
        if @user.update_attributes(user_params)
            redirect_to users_path
        else
            render action: :edit
        end
    end
    
    def destroy
        @user = User.find(params[:id]) 
        @user.destroy
        sign_out
        redirect_to root_path
    end

    def criaLaausp
        @user = User.new(name: "LAAUSP", email: "laausp@usp.br", password: "123456", role: :LAAUSP)
        if @user.save
            #UserMailer.welcome_email(@user).deliver_now
            redirect_to @user, notice: "Usuário foi criado com sucesso!"
            #tire o método de comentário quando criar o helper.
            #Usuário depois de cadastrar-se acessa o sistema automaticamente
    #sign_in(@user)
        else 
    render action: :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
