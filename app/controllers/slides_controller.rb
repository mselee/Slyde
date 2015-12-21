class SlidesController < ApplicationController
  # def index
  #   @comments = Comment.all
  # end

  def show
    document = Document.find(params[:document_id])
    @slide = document.get_slide(params[:number].to_i)
  end
end
