require "spec_helper"

describe "Student Application" do
  let(:student) { FactoryGirl.create(:student) }
  let(:application) { FactoryGirl.create(:application) }

  context "as a student" do
    before :each do
      log_in_as :student, student
      visit student_path student
    end

    describe "create new application" do
      before :each do
        click_link "Start"
      end

      it "allows me to start a new application" do
        expect(page).to have_content("Your NSS Application")
      end

      it "allows me to complete my application" do
        fill_in_application
        click_button "Finish"
        expect(page).to have_content("You have sucessfully")
      end

      it "associates my application with me" do
        fill_in_application
        expect{
          click_button "Finish"
        }.to change{ student.applications.count }.by 1
      end
    end

    describe "update my application" do
      it "allows me to update an existing application", :focus => true do
        application.student = student
        student.applications << application
        visit student_path student
        within '#student-applications-table' do
          click_link "Edit"
        end
        fill_in("Employment History", :with => "bogus")
        click_button "Finish"
        application.reload
        expect(application.employment_history).to eq('bogus')
        expect(page).to have_content('You have sucessfully')
      end
    end
  end
end
