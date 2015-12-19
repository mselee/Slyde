class DocumentsController < ApplicationController
  def open
  	@document = Document.find_by(params: [:id])
  end
end
