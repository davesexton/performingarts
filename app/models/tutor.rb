class Tutor < ActiveRecord::Base
  attr_accessible :name, :profile, :role

  include Backup

end
