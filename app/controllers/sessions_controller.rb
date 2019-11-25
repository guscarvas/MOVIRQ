class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def create  
            @user = User.find_by(email: params[:session][:email].downcase)
            if @user && @user.authenticate(params[:session][:password])
                        # sign_in(@user)
                        sign_in()
                        redirect_to @user

            elsif not @user #.authenticate(params[:session][:password])
              redirect_to root_url
            
            else
              render 'new'

            end
  end
  def destroy
    sign_out
    redirect_to root_url
  end
end
