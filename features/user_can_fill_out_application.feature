Feature: Fill Out Application
  In order to apply to NSS
  As an applicant user
  I want to complete the application

  Background:
    Given I am on the homepage

  Scenario: Happy Path
    Given I am signed in
    Then I should see the title "Apply for NSS!"
    When I click "Begin"
    Then I should see the title "Edit Your Application"
    When I fill in all the fields
    And I click "Update Application"
    Then I should see "Your application has been updated"
    And I should see the title "Review Your Application"

  Scenario: Cannot fill out application if not signed in
    Given I am not signed in
    Then I should see "Sign In"
