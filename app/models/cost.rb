class Cost < ActiveRecord::Base
  attr_accessible :description, :full_term_price, :half_term_price

  include Backup

end
