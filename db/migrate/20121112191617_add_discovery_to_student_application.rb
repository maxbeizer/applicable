class AddDiscoveryToStudentApplication < ActiveRecord::Migration
  def change
    add_column :student_applications, :discovery, :text
  end
end
