class DocumentsController < ApplicationController
 before_action :set_document, only: [:show, :upload,  :delete]

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def show
  	@document = Document.find(params[:id])
    @isLiked = !(Like.find_by(user_id: current_user.id, likable_id: @document.id))
  end

  # to upload new file
  def create
    @document = Document.new(params.require(:document).permit(:file_path).merge(:user_id => current_user.id))
    @document.name = @document.file_path.file.filename
    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        reader = PDF::Reader.new("public/uploads/#{@document.id}/#{@document.name}")
        count=reader.page_count
        pdf_file_name = "public/uploads/#{@document.id}/#{@document.name}"
        im = Magick::Image.read(pdf_file_name)

            for i in 0..count-1
              im[i].write(pdf_file_name+"#{i}"+ ".jpg")
              im[i] = im[i].thumbnail(240,240)
              

              Dir.mkdir("public/uploads/#{@document.id}/thumbnails")unless File.exists?("public/uploads/#{@document.id}/thumbnails")  
              im[i].write("public/uploads/#{@document.id}/thumbnails/#{@document.name}"+"#{i}"+".jpg")    
              @slide = Slide.create!(params.require(:document).permit(:document_id).merge(:document_id=>@document.id,:number=>i,:file_path=>"/uploads/#{@document.id}/thumbnails/#{@document.name}"+"#{i}"+".jpg"))

            end
      else
        format.html { render :new }
      end
    end
  end

    def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully deleted.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:file_path, :filename, :user_id, :name)
    end

end
