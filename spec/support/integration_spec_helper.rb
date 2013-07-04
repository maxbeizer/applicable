module Applicable
  module IntegrationSpecHelper
    include Warden::Test::Helpers

    def log_in_as(role, user = nil)
      user = FactoryGirl.create(role) unless user
      login_as user, :scope => role
      login_as user, :scope => :user

      user
    end

    def fill_in_application
      fill_in("Employment History", with: "Robber Baron")
      choose("Self-employed")
      fill_in("Why are you applying for the Nashville Software School?", with: "because")
      fill_in("What is your background with computers/technology/programming?", with: "nada")
      fill_in("application_tech_story", with: "I cannot")
      fill_in("application_site_critique", with: "It's wonderful")
      fill_in("Please tell us something surprising or amusing that you have discovered.", with: "I am a cucumber test")
      fill_in("application_video", with: "www.youtube.com")
      select("January 2013 for Web Development Bootcamp")
      choose("Yes, I will be seeking a job in Nashville")
      choose("Yes, if accepted I will need sponsorship in order to attend the summer 2012 program")
      choose("No but I will be moving there to attend Nashville Software School")
      fill_in("application_commitments", with: "I have no commitments")
      fill_in("application_awareness", with: "A little bird told me")
      fill_in("application_anything_else", with: "There is nothing else you need to know")
    end
  end
end
