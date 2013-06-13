require "spec_helper"

describe "Student Profile" do
  let(:student) { FactoryGirl.create(:student) }

  before :each do
    log_in_as :student, student
    visit student_path student
  end

  describe "view profile" do
    it "shows my info for review" do
      expect(page).to have_content("Review Your Info")
    end
  end

  describe "sign out" do
    it "allows me to sign out of Applicable" do
      click_link "Sign Out"
      expect(page).to have_content("Signed out successfully")
    end
  end

  describe "applications" do
    it "displays link to start a new application" do
      expect(page).to have_content('Start a New Application')
    end

    context "with a persisted application" do
      describe "a table" do
        let!(:application) { FactoryGirl.create(:application, :student => student) }

        before :each do
          visit student_path student
        end

        it "displays my application" do
          expect(page).to have_content('Your Applications')
        end

        it "allows me to edit my application" do
          click_link 'Edit'
          expect(page.current_path).to eq("/students/#{student.id}/applications/#{application.id}/edit")
        end

        it "allows me to delete my application" do
          expect { click_link 'Delete' }.to change { student.applications.count }.by(-1)
        end
      end
    end

    context "with multiple persisted applications" do
      describe "a table" do
        let!(:application_one) { FactoryGirl.create(:application, :student => student, :program_selection => 'bogus one') }
        let!(:application_two) { FactoryGirl.create(:application, :student => student, :program_selection => 'bogus two') }

        it "displays my applications" do
          visit student_path student
          expect(page).to have_content('bogus one')
          expect(page).to have_content('bogus two')
        end
      end
    end
  end

  describe "edit profile" do
    before :each do
      click_link "Edit"
    end

    it "displays a form to edit my profile" do
      expect(page).to have_content("First Name")
    end

    it "allows me to update my profile info" do
      fill_in "First Name", :with => "New Name"
      click_button "Save"
      expect(page).to have_content("New Name")
      expect(page).to have_content("You have successfully saved your info")
    end

    #TODO adds some validations already. yeesh
    #it "alerts me to errors with my update" do
      #fill_in "First Name", :with => ""
      #click_button "Save"
      #expect(page).to have_content("There was an error updating your info")
      #expect(page.current_path).to eq('/students/1/edit/')
    #end
  end

  describe "delete account" do
    it "allows me to delete my Applicable profile" do
      click_link "Delete"
      expect(page).to have_content("Your account was successfully cancelled")
    end

    it "removes student from the system" do
      expect{ click_link "Delete" }.to change{ Student.count }.by(-1)
    end
  end
end
