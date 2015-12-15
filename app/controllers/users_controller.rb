class UsersController < ApplicationController
  def login
  	user = User.find_by(email: params[:user][:email])
  	if @email && user.authenticate(params[:user][:password])
  		redirect_to home
  	else
  		render "login"
  	end
  end
end
