Feature: Admins can archive students
  In order to review only active students
  As an admin
  I want to be able to remove old applicants from current pool

  Background:
    Given I am signed in as an admin
    And there is an archived student with the name "Archived Student"
    And there is a student with the name "Active Student"

  Scenario: As an admin, I will not see archived students on the index page
    When I go to /students
    Then I should not see "Archived Student"
    And I should see "Active Student"

  Scenario: As an admin, I can archive a student from the index page
    When I go to /students
    And I click "Active Student"
    And I click "Archive This Student"
    Then I should be on /students
    And I should not see "Active Student"

