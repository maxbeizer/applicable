Feature: Fill Out Application
  In order to apply to NSS
  As an applicant user
  I want to complete the application

  Scenario: Happy Path
    Given I am signed in
    Then I should see the title "Apply for NSS!"
    When I click "Begin"
    Then I should see the title "Apply Here"
    When I fill in all the fields
    And I click "Submit Application"
    Then I should see "Your Application has been created."
    And I should see the title "Review Your Application"

  Scenario: Cannot fill out application if not signed in
    Given I am not signed in
    Then I should not see "Begin"
