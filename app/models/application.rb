class Application < ActiveRecord::Base
  attr_accessible :employment_history, :employment_status, :application_reason,
                  :tech_background, :tech_story, :site_critique, :discovery,
                  :video, :program_selection, :seeking_job, :scholarship,
                  :location, :commitments, :awareness, :anything_else

  belongs_to :student
end
