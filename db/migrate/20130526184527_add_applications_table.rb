class AddApplicationsTable < ActiveRecord::Migration
  def up
    create_table :applications do |t|
      t.references :student
      t.text :employment_history
      t.string :employment_status
      t.text :application_reason
      t.text :tech_background
      t.text :tech_story
      t.text :site_critique
      t.text :discovery
      t.string :video
      t.string :program_selection
      t.string :seeking_job
      t.string :scholarship
      t.string :location
      t.string :commitments
      t.text :awareness
      t.text :anything_else

      t.timestamps
    end
  end

  def down
    drop_table :applications
  end
end
