class UsersController < ApplicationController

  def login

  end

  def loginValidate
  	user = User.find_by(email: params[:user][:email].downcase, password: params[:user][:password].downcase)
  	if user
  		#redirect_to home
  		flash.now[:success] = 'logged in successfully'
  		render "login"
  	else
  		flash.now[:danger] = 'invalid email/password combination'
  		render "login"
  	end
  end


def create
   @user = User.create!(params.require(:user).permit(:name,:password,:email,:gender))
end

end
