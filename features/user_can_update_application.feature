Feature: Update Application
  In order to fix errors on my application
  As an applicant user
  I want to have the ability to update my application responses

  Scenario: Happy Path
    Given I am on the homepage
    And I am signed in
    And I fill in all the fields
    And I click "Update Application"
    When I click "revise this answer"
    Then I should see the title "Edit Your Application"
    When I fill in "Eliza" for "First Name"
    And I click "Update Application"
    Then I should see "Your application has been updated"
    And I should see the title "Review Your Application"

