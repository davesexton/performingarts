class AddRoleToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :role, :string
  end
end
