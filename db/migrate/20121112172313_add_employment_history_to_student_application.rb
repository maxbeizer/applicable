class AddEmploymentHistoryToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :employment_history, :text
  end
end
