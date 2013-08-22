class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :name
      t.text :profile

      t.timestamps
    end
  end
end
