Feature: User has one application associated with her email
  In order to complete my application
  As an applicant
  I want to be able to sign in and see my application

  Background:
    Given I am on the homepage
    And I am signed in

  @wip
  Scenario: Signed in user sees her application (that exists)
    When I have started an application already
    And I click "Resume Your Application"
    Then I should see the title "Review Your Application"

  Scenario: Signed in user starts a new application if no other exists
    When I have not started an application yet
    And I click "Begin"
    Then I should see "Create new application"
