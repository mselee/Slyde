class CommentsController < ApplicationController

  def create
    @user = current_user
    # byebug
    document = Document.find(params[:document_id])
    if params[:slide_number].nil?
      # commentable = $1.classify.constantize.find(value)
      commentable = document
    else
      commentable = document.slides.find_by_number(params[:slide_number])
    end
    commentable.comments.create(params.require(:comment).permit(:text).merge(:user_id => @user.id))
    redirect_to :back
  end

end
