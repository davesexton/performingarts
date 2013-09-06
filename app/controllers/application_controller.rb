class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery

  protected

  def authorize
    unless User.find_by_id(session[:user_id])
      session[:original_target] = request.url # unless request.url =~ /admin/

      if User.count.zero?
        user = User.create(:name => params[:name],
                            :password => params[:password],
                            :password_confirmation => params[:password])
      end
      redirect_to login_url, notice: 'Please log in'
    end
  end

  private

  def make_thumb path

    require 'RMagick'
    thumb = path.sub('_images', '_thumbnails')
    img = Magick::Image::read(path).first
    img = img.crop_resized!(75, 75, Magick::NorthGravity)
    img.write(thumb)

  end

  def get_gallery_images

    path = Rails.root.join('public', 'images', 'gallery_images', '*.jpg')

    @pics = Dir[path].sort_by{ |i| i.match('\d+(?=\.jpg$)')[0].to_i }.collect do |f|
      make_thumb f unless FileTest.exist?(f.sub('_images', '_thumbnails'))

      idx = f.match('\d+(?=\.jpg$)')[0]

      img = Hash.new(0)
      img[:thumb_path] = "/images/gallery_thumbnails/#{idx}.jpg"
      img[:image_path] = "/images/gallery_images/#{idx}.jpg"

      img

    end

  end

end
