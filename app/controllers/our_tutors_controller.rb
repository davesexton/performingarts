class OurTutorsController < ApplicationController
  def index
    @tutors = Tutor.all

  end
end
