class StudentMailer < ActionMailer::Base
  default from: "from@example.com"

  def completion_email(student)
    @student = student
    @url  = "http://example.com/login"
    mail(:to => student.email, :subject => "Your NSS Application")
  end
end
