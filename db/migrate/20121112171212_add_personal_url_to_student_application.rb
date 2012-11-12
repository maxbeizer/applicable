class AddPersonalUrlToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :personal_url, :string
  end
end
