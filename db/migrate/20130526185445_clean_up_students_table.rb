class CleanUpStudentsTable < ActiveRecord::Migration
  def up
    remove_column :students, :employment_history
    remove_column :students, :employment_status
    remove_column :students, :application_reason
    remove_column :students, :tech_background
    remove_column :students, :tech_story
    remove_column :students, :site_critique
    remove_column :students, :discovery
    remove_column :students, :video
    remove_column :students, :program_selection
    remove_column :students, :seeking_job
    remove_column :students, :scholarship
    remove_column :students, :location
    remove_column :students, :commitments
    remove_column :students, :awareness
    remove_column :students, :anything_else
  end

  def down
    add_column :students, :employment_history
    add_column :students, :employment_status
    add_column :students, :application_reason
    add_column :students, :tech_background
    add_column :students, :tech_story
    add_column :students, :site_critique
    add_column :students, :discovery
    add_column :students, :video
    add_column :students, :program_selection
    add_column :students, :seeking_job
    add_column :students, :scholarship
    add_column :students, :location
    add_column :students, :commitments
    add_column :students, :awareness
    add_column :students, :anything_else
  end
end
