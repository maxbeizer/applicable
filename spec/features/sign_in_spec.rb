require "spec_helper"

describe "Sign in to Applicable" do
  let!(:student) { FactoryGirl.create(:student, :email => 'email@example.com', :password => 'asdfasdf', :password_confirmation => 'asdfasdf') }

  before :each do
    visit new_student_session_path
  end

  context "happy path" do
    it 'lets me sign into my acccount' do
      fill_in "Email", :with => 'email@example.com'
      fill_in "Password", :with => 'asdfasdf'
      click_button "Sign in"
      expect(page).to have_content("Signed in as")
    end
  end

  context "without correct credentials" do
    it 'alerts me to errors' do
      fill_in "Email", :with => 'bogus'
      fill_in "Password", :with => 'asdfasdf'
      click_button "Sign in"
      expect(page).to have_content("Invalid email or password")
    end
  end
end
