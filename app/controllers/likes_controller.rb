class LikesController < ApplicationController
  before_action :set_likable, only: [:create, :destroy]
  
  def create
    #    @likable = nil
    #    document = Document.find(params[:document_id])
    # if(params[:slide_number].nil?)
    #   @likable = document
    # else
    #   @likable = document.slides.find_by_number(params[:slide_number])
    # end
    unless Like.find_by(user_id: current_user.id, likable_id: @likable.id)
      like = Like.create(:user => current_user, likable: @likable )
    end
    redirect_to :back
  end

  # def destroy
  # 	user = current_user
  #   document = Document.find(params[:document_id])
  #   #byebug
  #   if(params[:number].nil?)
  #    like = Like.find_by(:user_id => user.id, likable_id => document.id)
  #   else
  #     slide = document.slides.find_by_number(params[:number])
  # 	 like = Like.find_by(:user_id => user.id, likable_id => slide.id)
  #   end
  # 	like.destroy if like
  # 	redirect_to :back
  # end

  def destroy
    @like = @likable.likes.find(params[:id])
    @like.destroy
    redirect_to :back
  end

  private
    def set_likable
      document = Document.find(params[:document_id])
      if(params[:slide_number].nil?)
        @likable = document
      else
        @likable = document.slides.find_by_number(params[:slide_number])
      end      
    end

end
