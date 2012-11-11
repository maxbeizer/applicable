class AddPhoneToStudentApplications < ActiveRecord::Migration
  def change
    add_column :student_applications, :phone, :string
  end
end
