class Application < ActiveRecord::Base
  attr_accessible :employment_history, :employment_status, :application_reason,
                  :tech_background, :tech_story, :site_critique, :discovery,
                  :video, :program_selection, :seeking_job, :scholarship,
                  :location, :commitments, :awareness, :anything_else

  belongs_to :student

  after_create :send_completion_email, :send_new_applicant_email

  private
  def send_completion_email
    StudentMailer.completion_email(student).deliver unless student.applications.blank?
  end

  def send_new_applicant_email
    StudentMailer.new_applicant_email(student).deliver unless student.applications.blank?
  end
end
