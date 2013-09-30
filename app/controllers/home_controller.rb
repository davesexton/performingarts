class HomeController < ApplicationController

  skip_before_filter :authorize

  def index
    @news_items = NewsItem.all
  end

end
