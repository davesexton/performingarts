class Venue < ActiveRecord::Base
  attr_accessible :name

  include Backup

  has_many :schedules
end
