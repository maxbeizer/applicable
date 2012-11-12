class AddTwitterToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :twitter, :string
  end
end
