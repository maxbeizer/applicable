Feature: Student completes application
  In order to complete my application
  As a student
  I want to send it to NSS in a good format

  Scenario: Happy Path
    Given I am on the homepage
    And I am signed in as "user@example.com"
    And I fill in all the fields
    When I click "Update Application"
    Then I click "complete application"
    And "user@example.com" should receive 1 email
    And "nashsoftwareschool@gmail.com" should receive 1 email
    And I should see "Your application is complete"
    And I should see the title "Thank You for Applying!"
    And I should see "Sign Out"
