class NewsItem < ActiveRecord::Base
  attr_accessible :body, :heading

  include Backup

  def body_formatted
    str = body.gsub(/(\r|\n)+/, '</p><p>')
    "<p>#{str}</p>"
  end

end
