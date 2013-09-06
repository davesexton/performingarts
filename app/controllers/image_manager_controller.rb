class ImageManagerController < ApplicationController

  def index
    @gallery_images = get_gallery_images
  end

  def upload
  end

  def delete
  end

end
