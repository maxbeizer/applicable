@wip
Feature: Homepage
  As an applicant
  In order to start the application
  I want to sign in on the homepage

  Scenario: Happy Path
    Given I am on the homepage
    And I am not signed in
    Then I should see the title "Apply for NSS!"
    When I fill in "eliza@example.com" for "Email"
    And I click "Begin"
    Then I should see "Welcome to the NSS application!"

  Scenario: No email given
    Given I am on the homepage
    And I am not signed in
    When I click "Begin"
    Then I should see "You must enter an email."
    And I should be on the homepage

  Scenario: Already signed up
    Given I am on the homepage
    And there is a user with the email "eliza@example.com"
    When I fill in "eliza@example.com" for "Email"
    Then I should see "That email is already in our system."
