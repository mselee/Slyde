class UsersController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def create
    @user = User.create!(params.require(:user).permit(:name,:password,:email,:gender))

   end
end
