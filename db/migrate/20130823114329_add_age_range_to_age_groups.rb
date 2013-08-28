class AddAgeRangeToAgeGroups < ActiveRecord::Migration
  def change
    add_column :age_groups, :from_age, :integer
    add_column :age_groups, :to_age, :integer
  end
end
