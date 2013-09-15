class Tutor < ActiveRecord::Base

  attr_accessible :name, :profile, :role, :image_upload
  attr_accessor :file_type

  include Backup

  validates :name, presence: true

  def profile_formatted
    str = profile.gsub(/(\r|\n)+/, '</p><p>')
    "<p>#{str}</p>"
  end

  def image_upload=(img)

    if id && img
      require 'RMagick'
      self.file_type = img.content_type.chomp
      img.rewind
      img = Magick::Image::from_blob(img.read).first

      img.change_geometry!('640x480') { |cols, rows, img|
        img.resize!(cols, rows)
      }
      file_name = Rails.root.join('public', 'images', 'tutor_images', "#{id}.jpg")
      img.write(file_name)
    end

  end

  def make_thumb path

    require 'RMagick'
    thumb = path.sub('_images', '_thumbnails')
    img = Magick::Image::read(path).first
    img.change_geometry!('125x125') { |cols, rows, img|
      img.resize!(cols, rows)
    }
    img.write(thumb)

  end

  def image_path
    "/images/tutor_images/#{id}.jpg"
  end

  def thumb_path

    path = "/images/tutor_thumbnails/#{id}.jpg"
    thumb = Rails.root.join('public', 'images', 'tutor_thumbnails', "#{id}.jpg")

    unless FileTest.exist?(thumb)
      image = thumb.sub('_thumbnails', '_images')
      if FileTest.exist?(image)
        require 'RMagick'
        img = Magick::Image::read(image).first
        img.change_geometry!('125x125') { |cols, rows, img|
          img.resize!(cols, rows)
        }
        img.write(thumb)
      else
        path = nil
      end
    end

    path

  end

end
