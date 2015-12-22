class FilesController < ApplicationController
  def images
  	reader = PDF::Reader.new("/home/cse2017/task2/public/sheet01/Sheet01.pdf")
count=reader.page_count
pdf_file_name = "/home/cse2017/task2/public/sheet01/Sheet01.pdf"
im = Magick::Image.read(pdf_file_name)

	for i in 0..count-1
		im[i].write(pdf_file_name+"#{i}"+ ".jpg")
		im[i].resize_to_fit(125, 125)
		im[i].background_color = "#FFFFFF"
		x = (im[i].columns - 125) / 2
        y = (im[i].rows - 125) / 2
        im[i] = im[i].extent(125, 125, x, y) 
        im[i].write("/home/cse2017/task2/public/sheet01/thumbnails/Sheet01.pdf"+"#{i}"+ ".png")
        
  	
   end
  end
end
