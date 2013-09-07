class GalleryController < ApplicationController

  skip_before_filter :authorize

  def index

    @gallery_images = get_gallery_images

#    path = Rails.root.join('public', 'images', 'gallery_images', '*.jpg')
#
#    @pics = Dir[path].sort_by{ |i| i.match('\d+(?=\.jpg$)')[0].to_i }.collect do |f|
#      make_thumb f unless FileTest.exist?(f.sub('gallery_images', 'gallery_thumbnails'))
#
#      file_name = f.match('\d+\.jpg$')[0]
#
#      pic = Hash.new(0)
#      pic[:thumb_path] = "/images/gallery_thumbnails/#{file_name}"
#      pic[:image_path] = "/images/gallery_images/#{file_name}"
#
#      pic
#    end

  end

end
