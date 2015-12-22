class SlidesController < ApplicationController
  # def index
  #   @comments = Comment.all
  # end

  def show
    @slide = Slide.find_by(document_id: params[:document_id], number: params[:number])
    @index = params[:number].to_i
    @next_slide = Slide.exists?(document_id: params[:document_id], number: @index + 1)
    @prev_slide = Slide.exists?(document_id: params[:document_id], number: @index - 1)
  end
end
