class AddProgramSelectionToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :program_selection, :string
  end
end
