class Student < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :first_name, :last_name, :phone,
                  :date_of_birth, :twitter, :personal_url,
                  :employment_history, :employment_status,
                  :application_reason, :tech_background,
                  :tech_story, :site_critique, :discovery,
                  :video, :program_selection, :seeking_job,
                  :scholarship, :location, :commitments,
                  :awareness, :anything_else
end
