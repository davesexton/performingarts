class ClassesController < ApplicationController

  skip_before_filter :authorize

  def index
    @age_groups = AgeGroup.all
  end
end
