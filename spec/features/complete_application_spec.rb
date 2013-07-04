require "spec_helper"

describe "Student completes application" do
  let(:student) { FactoryGirl.create(:student) }

  before :each do
    log_in_as :student, student
  end

  describe "as a create action" do
    before :each do
      visit student_path student
      click_link "Start"
      fill_in_application
      click_button "Finish"
    end

    it "sends the student an email" do
      expect(ActionMailer::Base.deliveries.first.to).to eq(["#{student.email}"])
    end

    it "sends the admin an email" do
      expect(ActionMailer::Base.deliveries.last.to).to eq(["nashsoftwareschool@gmail.com"]) #TODO make this dynamic
    end

    it "attaches a PDF to the admin's email" do
      expect(ActionMailer::Base.deliveries.last.parts.last.filename).to eq("student_#{student.last_name}.pdf")
    end
  end

  describe "as an update action" do
    let(:application) { FactoryGirl.create(:application) }

    before :each do
      application.update_attribute :student, student
      student.reload
      application.reload
      visit edit_student_application_path student, application
      fill_in "Employment History", :with => "any old change"
      click_button "Finish"
    end

    it "sends the student an email" do
      expect(ActionMailer::Base.deliveries[-2].subject).to include("You've Updated")
    end

    it "sends the admin an email" do
      expect(ActionMailer::Base.deliveries.last.subject).to include("Updated")
    end
  end
end
