require "spec_helper"

describe "Student completes application" do
  let(:student) { FactoryGirl.create(:student) }

  describe "as a create action" do
    before :each do
      log_in_as :student, student
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
  end
end
