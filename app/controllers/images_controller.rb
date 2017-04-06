class ImagesController < ApplicationController
  def show
    image = Spree::Image.find params[:id]
    file = image.attachment.file_for(params[:style])
    send_data file.file_contents, :type => image.attachment_content_type, :disposition => 'inline'
  end
end
