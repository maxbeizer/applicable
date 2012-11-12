class AddDateOfBirthToStudentApplications < ActiveRecord::Migration
  def change
    add_column :student_applications, :date_of_birth, :date
  end
end
