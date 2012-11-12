class AddEmploymentStatusToStudentApplications < ActiveRecord::Migration
  def change
    add_column :student_applications, :employment_status, :string
  end
end
