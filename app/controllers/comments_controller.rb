class CommentsController < ApplicationController

  def create
    @comment = Comment.create(params.require(:comment).permit(:username, :text))
    redirect_to '/slides/'
end

end
