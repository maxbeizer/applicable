@wip
Feature: Homepage
  As an applicant
  In order to start the application
  I want to sign in on the homepage

  Background:
    Given I am on the homepage

  Scenario: Happy Path
    Given I am signed in as "user1@example.com"
    Then I should see the title "Apply for NSS!"
    And I should see "Begin"

  Scenario: No begin button if you're not signed in
    Given I am not signed in
    Then I should see "Apply for NSS!"
    And I should see "Sign Up"
    When I click "Sign Up"
    Then I should see the title "Sign up"
    ## Is clicking "Sign Up" getting the button at the bottom or nav button?

