class AdminController < ApplicationController

  def backup

    str = AgeGroup.to_rb
    str += Course.to_rb
    str += NewsItem.to_rb
    str += Schedule.to_rb
    str += Tutor.to_rb
    str += Venue.to_rb
    str += Question.to_rb
    str += Cost.to_rb

    str = "<pre># encoding: utf-8\n#{str}\n</pre>"

    respond_to do |format|
      format.html {render text: str }
    end

  end

  def index
  end

end
