class Question < ActiveRecord::Base
  attr_accessible :answer, :position, :question

  include Backup

end
