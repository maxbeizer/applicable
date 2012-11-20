class Drop < ActiveRecord::Migration
  def up
    drop_table :student_applications
  end

  def down
  end
end
