class AddSiteCritiqueToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :site_critique, :text
  end
end
