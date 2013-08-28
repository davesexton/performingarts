class RemoveTimeTextFieldsFromSchedules < ActiveRecord::Migration
  def up
    remove_column :schedules, :start_time
    remove_column :schedules, :end_time
  end

  def down
    add_column :schedules, :end_time, :string
    add_column :schedules, :start_time, :string
  end
end
