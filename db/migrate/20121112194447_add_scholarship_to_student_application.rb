class AddScholarshipToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :scholarship, :string
  end
end
