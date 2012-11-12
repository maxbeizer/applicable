class AddApplicationReasonToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :application_reason, :text
  end
end
