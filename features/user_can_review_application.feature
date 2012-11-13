@wip
Feature: Review Application
  In order to make sure my application is accurate
  As an applicant user
  I want to have the ability to review my application

  Background:
    Given I am on the homepage
    And I am signed in
    And I click "New Application"
    And I fill in "Eliza" for "First Name"
    And I fill in "Brock" for "Last Name"
    And I fill in "1112223333" for "Phone"
    And I select "June" from "student_application_date_of_birth_2i"
    And I select "6" from "student_application_date_of_birth_3i"
    And I select "1944" from "student_application_date_of_birth_1i"
    And I fill in "@Eliza" for "Twitter"
    And I fill in "www.Eliza.com" for "Personal URL"
    And I fill in "Robber Baron" for "Employment History"
    And I choose "Self-employed"
    And I fill in "because" for "Why are you applying for the Nashville Software School?"
    And I fill in "nada" for "What is your background with computers/technology/programming?"
    And I fill in "I cannot." for "student_application_tech_story"
    #for some reason ^^^ is not picking up that long string for the label
    And I fill in "It's wonderful" for "student_application_site_critique"
    #for some reason ^^^ is not picking up that long string for the label
    And I fill in "I am a cucumber test" for "Please tell us something surprising or amusing that you have discovered."
    And I fill in "www.youtube.com" for "student_application_video"
    #for some reason ^^^ is not picking up that long string for the label
    And I choose "January 2013 for Web Development Bootcamp"
    And I choose "Yes"
    And I choose "Yes, if accepted I will need sponsorship in order to attend the summer 2012 program"
    And I choose "No but I will be moving there to attend Nashville Software School"
    And I fill in "I have no commitments" for "student_application_commitments"
    #for some reason ^^^ is not picking up that long string for the label
    And I fill in "A little bird told me" for "student_application_awareness"
    #for some reason ^^^ is not picking up that long string for the label
    And I fill in "There is nothing else you need to know" for "student_application_anything_else"
    #for some reason ^^^ is not picking up that long string for the label
    And I click "Create Student application"

  Scenario: Happy Path
    Then I should see the title "Review Your Application"
    And I should see the title "Eliza"
    And I should see the title "Brock"
    And I should see "Phone: 1112223333"
    And I should see "Date of birth: June 6, 1944"
    And I should see "Twitter: @Eliza"
    And I should see "Personal url: www.Eliza.com"
    And I should see "Employment history: Robber Baron"
    And I should see "Employment status: Self-employed"
    And I should see "Application reason: because"
    And I should see "Tech background: nada"
    And I should see "Tech story: I cannot"
    And I should see "Site critique: It's wonderful"
    And I should see "Discovery: I am a cucumber test"
    And I should see "Video: www.youtube.com"
    And I should see "Program selection: January 2013 for Web Development Bootcamp"
    And I should see "Seeking job: Yes"
    And I should see "Scholarship: Yes, if accepted I will need sponsorship in order to attend the summer 2012 program"
    And I should see "Location: No but I will be moving there to attend Nashville Software School"
    And I should see "Commitments: I have no commitments"
    And I should see "Awareness: A little bird told me"
    And I should see "Anything else: There is nothing else you need to know"

