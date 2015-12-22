class CommentsController < ApplicationController

  def create
    @user = current_user
    # byebug
    if params[:slide_number].nil?
      # commentable = $1.classify.constantize.find(value)
      commentable = Document.find(params[:document_id])
    else
      commentable = Slide.find(params[:slide_number])
    end
    commentable.comments.create(params.require(:comment).permit(:text).merge(:user_id => @user.id))
    redirect_to :back
  end

end
