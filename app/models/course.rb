class Course < ActiveRecord::Base
  attr_accessible :name

  has_many :schedules

end
