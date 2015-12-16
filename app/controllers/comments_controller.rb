class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.create(params.require(:comment).permit(:username, :text))
    index
    render :index
  end

end
