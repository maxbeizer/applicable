class AddSeekingJobToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :seeking_job, :string
  end
end
