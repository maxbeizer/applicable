class StudentApplication < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone,
                  :date_of_birth, :twitter, :personal_url,
                  :employment_history, :employment_status,
                  :application_reason, :tech_background,
                  :tech_story, :site_critique, :discovery,
                  :video, :program_selection, :seeking_job,
                  :scholarship, :location, :commitments,
                  :awareness, :anything_else, :user_id

  belongs_to :user
end
