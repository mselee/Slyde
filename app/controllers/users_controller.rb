class UsersController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new
  	if logged_in?
  		redirect_to '/documents'
  	end
  end


  def create
    @user = User.create!(params.require(:user).permit(:name,:password,:email,:age,:gender))

   end
end