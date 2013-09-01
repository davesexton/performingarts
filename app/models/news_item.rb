class NewsItem < ActiveRecord::Base
  attr_accessible :body, :heading

  include Backup

end
