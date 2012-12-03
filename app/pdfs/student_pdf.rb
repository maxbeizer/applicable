class StudentPdf < Prawn::Document

  def initialize(student, view)
    super()
    @student = student

    text "#{@student.first_name} #{@student.last_name}"
    text "#{@student.email}"
    text "Phone: #{@student.phone}"
    text "DOB: #{@student.date_of_birth}"
    text "Twitter: #{@student.twitter}"
    text "Personal URL: #{@student.personal_url}"
    text "Employment History: #{@student.employment_history}"
    text "Employment Status: #{@student.employment_status}"
    text "Reason for Applicaiton: #{@student.application_reason}"
    text "Background in Tech: #{@student.tech_background}"
    text "Tech Story: #{@student.tech_story}"
    text "Critique of NSS Site: #{@student.site_critique}"
    text "Discovery Story: #{@student.discovery}"
    text "Video URL: #{@student.video}"
    text "Program Selection: #{@student.program_selection}"
    text "Seeking Job?: #{@student.seeking_job}"
    text "Scholarship?: #{@student.scholarship}"
    text "Location: #{@student.location}"
    text "Commitments: #{@student.commitments}"
    text "Awareness of NSS: #{@student.awareness}"
    text "Anything Else?: #{@student.anything_else}"
  end
end
