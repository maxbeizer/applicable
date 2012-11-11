class CreateStudentApplications < ActiveRecord::Migration
  def change
    create_table :student_applications do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
