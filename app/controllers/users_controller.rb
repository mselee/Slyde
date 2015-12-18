class UsersController < ApplicationController
def create
	#@users=User.create(name: params['name'], gender: params['name'], password:params['password'],
	#email:params['email'])
   @user = User.create!(params.require(:user).permit(:name,:password,:email,:gender))
end
end
