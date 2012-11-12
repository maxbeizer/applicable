class AddTechBackgroundToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :tech_background, :text
  end
end
