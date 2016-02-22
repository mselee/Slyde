class UsersController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new
  	if logged_in?
  		if params[:from] == "signup"
  			render "create"
  		else
	  		redirect_to '/documents'
	  	end
  	end
  end


  def create
    @user = User.create!(params.require(:user).permit(:name,:password,:email,:age,:gender))
  	parameters = Hash.new
  	user = Hash.new
  	user = {"email" => params[:user][:email] , "password" => params[:user][:password] , "new" => true }
  	parameters = {'user' => user}
  	# byebug
    redirect_to login_path(parameters)
  	# redirect_to controller: "Sessions", action: 'create', param1: user
   end
end