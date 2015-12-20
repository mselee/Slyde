class UsersController < ApplicationController


  def create
    @user = User.create!(params.require(:user).permit(:name,:password,:email,:gender))

   end
end
