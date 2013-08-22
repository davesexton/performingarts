class Schedule < ActiveRecord::Base
  attr_accessible :age_group_id, :course_id, :end_time, :start_time, :venue_id
end
