class AddLocationToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :location, :string
  end
end
