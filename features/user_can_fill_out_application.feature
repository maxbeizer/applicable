Feature: Fill Out Application
  In order to apply to NSS
  As an applicant user
  I want to complete the application

  Scenario: Happy Path
    Given I am signed in
    When I fill in "Eliza" for "First Name"
    And I fill in "Brock" for "Last Name"
    And I fill in "1112223333" for "Phone"
    And I fill in "12/12/1212" for "Date of Birth"
    And I fill in "@Eliza" for "Twitter"
    And I fill in "www.Eliza.com" for "Personal URL"
    And I fill in "Robber Baron" for "Employment History"
    #And I click "Self-employed"
    And I fill in "because" for "Why are you applying for the Nashville Software School?"
    And I fill in "nada" for "What is your background with computers/technology/programming?"
    And I fill in "I cannot." for "The ideal candidate is someone who loves to solve problems or tinker and who doesn't easily give up.  Can you tell us a story that illustrates these qualities in you?"
    And I fill in "It's wonderful" for "What do you like and not like about our website?  What can we do better?"
    And I fill in "I am a cucumber test" for "Please tell us something surprising or amusing that you have discovered."
    And I fill in "www.youtube.com" for "Video link: It's not required but a short video gives you a chance to sell yourself to us in a way that text cannot.  To help make sure we like you feel free to create a short video to support your application.  Put the link to the video here."
    #And I click "Either one"
    #And I click "Yes"
    #And I click "Yes, if accepted I will need sponsorship in order to attend the summer 2012 program"
    #And I click "Yes"
    And I fill in "I have no commitments" for "Do you have commitments on the weekdays during the Web Development Bootcamp?"
    And I fill in "A little bird told me" for "How did you hear about the Nashville Software School?"
    And I fill in "There is nothing else you need to know" for "Is there anything else you would like us to know?"
    And I click "Continue"
    Then I should see the title "Review"

  Scenario: User not signed in
    Given I am not signed in
    Then I should not be on the start page
    Then I should be on the home page
