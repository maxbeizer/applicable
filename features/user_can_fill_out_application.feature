Feature: Fill Out Application
  In order to apply to NSS
  As an applicant user
  I want to complete the application

  Background:
    # Given I am signed in
    # And I click "Begin"
    Given I am on the homepage

  Scenario: Happy Path
    Given I am signed in
    Then I should see the title "Your NSS Application"
    When I click "New Application"
    Then I should see the title "Apply Here"
    When I fill in "Eliza" for "First Name"
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
    And I choose "Yes"
    And I fill in "I have no commitments" for "student_application_commitments"
    #for some reason ^^^ is not picking up that long string for the label
    And I fill in "A little bird told me" for "student_application_awareness"
    #for some reason ^^^ is not picking up that long string for the label
    And I fill in "There is nothing else you need to know" for "student_application_anything_else"
    #for some reason ^^^ is not picking up that long string for the label
    And I click "Submit Application"
    Then I should see "Your Application has been created."
    And I should see the title "Review Your Application"

  Scenario: Cannot fill out application if not signed in
    Given I am not signed in
    Then I should see "Sign In"
