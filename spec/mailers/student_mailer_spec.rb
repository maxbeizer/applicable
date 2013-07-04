require "spec_helper"

describe StudentMailer do
  it "sends the completion email to the student" do
    student = stub
    student.stub(:email => 'foo@example.com', :name => 'bogus')
    StudentMailer.completion_email(student).deliver
    expect(ActionMailer::Base.deliveries.first.subject).to eq('Your NSS Application')
  end

  it "sends the awareness email to the school" do
    student = stub.as_null_object
    student.stub(:email => 'foo@example.com', :name => 'bogus') 
    StudentMailer.new_applicant_email(student).deliver
    expect(ActionMailer::Base.deliveries.first.subject).to eq('bogus has applied to NSS')
  end
end
