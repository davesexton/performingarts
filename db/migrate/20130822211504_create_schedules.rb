class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :course_id
      t.integer :venue_id
      t.integer :age_group_id
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
