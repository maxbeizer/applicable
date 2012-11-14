Feature: Review Application
  In order to make sure my application is accurate
  As an applicant user
  I want to have the ability to review my application

  Scenario: Happy Path
    Given I am on the homepage
    And I am signed in
    And I click "New Application"
    And I fill in all the fields
    When I click "Submit Application"
    Then I should see the title "Review Your Application"
    And I should see the title "Eliza"
    And I should see the title "Brock"
    And I should see "Phone: 1112223333"
    And I should see "revise this answer"
    And I should see "Date of birth: June 6, 1944"
    And I should see "Twitter: @eliza"
    And I should see "Personal url: www.eliza.com"
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

