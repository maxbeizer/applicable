class AddCommitmentsToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :commitments, :string
  end
end
