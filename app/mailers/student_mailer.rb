class StudentMailer < ActionMailer::Base
  default from: "nashsoftwareschool@gmail.com"

  def completion_email(student)
    @student = student
    @url  = "http://applicable.herokuapp.com/students/sign_in"
    mail(:to => student.email, :subject => "Your NSS Application")
  end

  def new_applicant_email(student)
    @student = student
    attachments["student_#{student.last_name}.pdf"] = StudentPdf.new(@student, view_context).render
    @url  = "http://applicable.herokuapp.com/students"
    mail(:to => "nashsoftwareschool@gmail.com", :subject => "#{student.name} has applied to NSS")
  end
end
