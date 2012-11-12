class AddVideoToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :video, :string
  end
end
