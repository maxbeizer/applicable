Feature: Student completes application
  In order to complete my application
  As a student
  I want to send it to NSS in a good format

  Background:
    Given I am on the homepage
    And I am signed in as "user@example.com"
    And I click "Begin"
    And I fill in all the fields

  Scenario: Happy Path
    When I click "Update Application"
    And I click "complete application"
    Then "user@example.com" should receive 1 email
    And "nashsoftwareschool@gmail.com" should receive 1 email
    And I should see "Your application is complete"
    And I should see the title "Thank You for Applying!"
    And I should see "Sign Out"

  Scenario: Testing that email to owner contains PDF
    When I click "Update Application"
    And I click "complete application"
    Then "nashsoftwareschool@gmail.com" should receive 1 email
    When "nashsoftwareschool@gmail.com" opens the email
    And there should be an attachment of type "pdf"
    And all attachments should not be blank
