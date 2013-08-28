class OurTutorsController < ApplicationController

  skip_before_filter :authorize

  def index
    @tutors = Tutor.all

  end
end
