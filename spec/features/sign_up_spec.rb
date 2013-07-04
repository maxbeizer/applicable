require "spec_helper"

describe "Sign Up" do
  describe "student" do
    it "lets me register for Applicable" do
      visit new_student_registration_path
      fill_in 'Email', :with => 'test@example.com'
      find('#student_password').set('asdfasdf')
      fill_in 'Password confirmation', :with => 'asdfasdf'
      click_button 'Sign up'
      expect(page).to have_content('Review Your Info')
    end

    it "tells me if there is something wrong with my registration" do
      visit new_student_registration_path
      fill_in 'Email', :with => ''
      find('#student_password').set('asdfasdf')
      fill_in 'Password confirmation', :with => 'asdfasdf'
      click_button 'Sign up'
      expect(page).to have_content('Please review the problems below')
    end
  end
end

