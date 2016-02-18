class SlidesController < ApplicationController
  # def index
  #   @comments = Comment.all
  # end

  def show
    @document = Document.find(params[:document_id])
    @slide = @document.slides.find_by_number(params[:number])
    @index = params[:number].to_i
    @next_slide = @document.slides.exists?(number: @index + 1)
    @prev_slide = @document.slides.exists?(number: @index - 1)
  end
end
