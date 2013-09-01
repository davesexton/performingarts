class AgeGroup < ActiveRecord::Base
  attr_accessible :name, :from_age, :to_age

  include Backup

  has_many :schedules

  def header
    "#{name} (age #{from_age}-#{to_age} approx.)"
  end
end
