class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new
  	#renders new.html.erb
  end

  def create

  	user = User.find_by(email: params.require(:user).permit(:email)[:email].downcase)
  	if user && user.authenticate(params.require(:user).permit(:password)[:password])
  		session[:user_id] = user.id
  		#redirect_to home
  	else
  		flash[:alert] = "invalid email/password combination"
  		redirect_to login_path
  	end

  end

  def destroy
  	reset_session
  	redirect_to login_path
  end
end
