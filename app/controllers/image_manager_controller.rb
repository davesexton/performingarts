class ImageManagerController < ApplicationController

  def index
    @gallery_images = get_gallery_images
  end

  def upload
    @gallery_images = get_gallery_images

    if params[:picture]

      img = params[:picture]

      if img.content_type  =~ /^image\/\w*(jpeg|png)\w*/
        require 'RMagick'

        img.rewind
        img = Magick::Image::from_blob(img.read).first
        path = Rails.root.join('public','images','gallery_images')
        file_name = DateTime.now.to_s(:number)

        img.change_geometry!('640x480') { |cols, rows, img|
          img.resize!(cols, rows)
        }
        img.write(path.join("#{file_name}.jpg"))
        flash[:notice] = 'File uploaded'

      else

        flash[:notice] = 'Only image file files allowed, file upload cancelled'

      end

    else

      flash[:notice] = 'No file selected, file upload cancelled'

    end

    redirect_to image_manager_path

  end

  def delete

    path = Rails.root.join('public','images')
    img = params[:image_path].match('(?<=/)\d+\.jpg$')[0]

    File.delete(path.join('gallery_images', img))
    File.delete(path.join('gallery_thumbnails', img))

    redirect_to image_manager_path, notice: 'Image deleted'

  end

end
