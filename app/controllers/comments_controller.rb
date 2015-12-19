class CommentsController < ApplicationController

  def create
    @user = User.first
    @comment = Comment.create(params.require(:comment).permit(:text).merge(:user_id => @user.id))
    redirect_to '/slides/'
end

end
