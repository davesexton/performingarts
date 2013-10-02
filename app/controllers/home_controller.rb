class HomeController < ApplicationController

  skip_before_filter :authorize

  def index
    @news_items = NewsItem.all
    #Dir[path].sample(3).each{|i| puts File.basename(i) }
  end

end
