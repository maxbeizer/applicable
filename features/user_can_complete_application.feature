Feature: Student completes application
  In order to complete my application
  As a student
  I want to send it to NSS in a good format

  Scenario: Happy Path
    Given I am on the homepage
    And I am signed in as "user@example.com"
    And I click "Begin"
    And I fill in all the fields
    When I click "Update Application"
    Then I click "complete application"
    Then "user@example.com" should receive 1 email
    Then I should see "Your application is complete"
