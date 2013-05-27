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
    end
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
