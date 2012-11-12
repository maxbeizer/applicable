class AddAwarenessToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :awareness, :string
  end
end
