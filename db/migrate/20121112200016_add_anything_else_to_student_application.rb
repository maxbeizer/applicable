class AddAnythingElseToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :anything_else, :text
  end
end
