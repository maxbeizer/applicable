require 'spec_helper'

describe 'Homepage' do
  let(:student) { FactoryGirl.create(:student) }

  describe 'when not logged in' do
    it 'tells me to sign up' do
      visit root_path
      within '#index-call-to-action' do
        expect(page).to have_content('Sign Up')
      end
    end
  end

  describe 'when logged in' do
    it 'tells me to begin filling out my application' do
      log_in_as :student, student
      visit root_path
      expect(page).to have_content('Begin')
    end
  end
end
