class AddTechStoryToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :tech_story, :text
  end
end
