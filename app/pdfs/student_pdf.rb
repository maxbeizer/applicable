class StudentPdf < Prawn::Document

  def initialize(student, view)
    super()
    @student = student

    default_leading 5

      text "<b>#{@student.name}</b>", :inline_format => true
      text "<b>#{@student.email}</b>", :inline_format => true
    move_down 15
      text "<b>Phone:</b> #{@student.phone}", :inline_format => true
      text "<b>DOB:</b> #{@student.date_of_birth}", :inline_format => true
      text "<b>Twitter:</b> #{@student.twitter}", :inline_format => true
      text "<b>Personal URL:</b> #{@student.personal_url}", :inline_format => true
    move_down 15
      text "<b>Employment History:</b> #{@student.employment_history}", :inline_format => true
    move_down 15
      text "<b>Employment Status:</b> #{@student.employment_status}", :inline_format => true
    move_down 15
      text "<b>Reason for Applicaiton:</b> #{@student.application_reason}", :inline_format => true
    move_down 15
      text "<b>Background in Tech:</b> #{@student.tech_background}", :inline_format => true
    move_down 15
      text "<b>Tech Story:</b> #{@student.tech_story}", :inline_format => true
    move_down 15
      text "<b>Critique of NSS Site:</b> #{@student.site_critique}", :inline_format => true
    move_down 15
      text "<b>Discovery Story:</b> #{@student.discovery}", :inline_format => true
    move_down 15
      text "<b>Video URL:</b> #{@student.video}", :inline_format => true
    move_down 15
      text "<b>Program Selection:</b> #{@student.program_selection}", :inline_format => true
    move_down 15
      text "<b>Seeking Job?:</b> #{@student.seeking_job}", :inline_format => true
    move_down 15
      text "<b>Scholarship?:</b> #{@student.scholarship}", :inline_format => true
    move_down 15
      text "<b>Location:</b> #{@student.location}", :inline_format => true
    move_down 15
      text "<b>Commitments:</b> #{@student.commitments}", :inline_format => true
    move_down 15
      text "<b>Awareness of NSS:</b> #{@student.awareness}", :inline_format => true
    move_down 15
      text "<b>Anything Else?:</b> #{@student.anything_else}", :inline_format => true
  end
end
