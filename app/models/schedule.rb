class Schedule < ActiveRecord::Base
  attr_accessible :age_group_id, :course_id, :time_start, :time_end, :venue_id

  include Backup

  belongs_to :course
  belongs_to :age_group
  belongs_to :venue
end
