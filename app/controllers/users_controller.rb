class UsersController < ApplicationController
  def login
  	
  end

  def loginValidate
  	user = User.find_by(email: params[:user][:email].downcase, password: params[:user][:password].downcase)
  	if user
  		redirect_to home
  	else
  		render "login"
  	end

  		
  end
end
