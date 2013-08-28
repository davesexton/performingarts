class AddTimeFieldsToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :time_start, :time
    add_column :schedules, :time_end, :time
  end
end
