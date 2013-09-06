class GalleryController < ApplicationController

  skip_before_filter :authorize

  def index
    path = Rails.root.join('public', 'images', 'gallery_images', '*.jpg')

    @pics = Dir[path].sort_by{ |i| i.match('\d+(?=\.jpg$)')[0].to_i }.collect do |f|
      make_thumb f unless FileTest.exist?(f.sub('gallery', 'gallery_thumbnail'))

      idx = f.match('\d+(?=\.jpg$)')[0]

      pic = Hash.new(0)
      pic[:thumb_url] = "/images/gallery_thumbnails/#{idx}.jpg"
      pic[:image_url] = "/images/gallery_images/#{idx}.jpg"

      pic
    end

  end

end
