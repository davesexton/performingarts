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
        require 'fileutils'

        img.rewind
        img = Magick::Image::from_blob(img.read).first
        path = Rails.root.join('public','images','gallery_images')
        id = Dir[path.join('*.jpg')].count + 1

        img.change_geometry!('640x480') { |cols, rows, img|
          img.resize!(cols, rows)
        }
        img.write(path.join("#{id}.jpg"))
        flash.now[:notice] = 'File uploaded'

      else

        flash.now[:alert] = 'Only image file files allowed, file upload cancelled'

      end

    else

      flash.now[:alert] = 'No category or file selected, file upload cancelled'

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
