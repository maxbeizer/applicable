class AddApplicationToStudents < ActiveRecord::Migration
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :phone, :string
    add_column :students, :date_of_birth, :date
    add_column :students, :twitter, :string
    add_column :students, :personal_url, :string
    add_column :students, :employment_history, :text
    add_column :students, :employment_status, :string
    add_column :students, :application_reason, :text
    add_column :students, :tech_background, :text
    add_column :students, :tech_story, :text
    add_column :students, :site_critique, :text
    add_column :students, :discovery, :text
    add_column :students, :video, :string
    add_column :students, :program_selection, :string
    add_column :students, :seeking_job, :string
    add_column :students, :scholarship, :string
    add_column :students, :location, :string
    add_column :students, :commitments, :string
    add_column :students, :awareness, :text
    add_column :students, :anything_else, :text
  end
end
