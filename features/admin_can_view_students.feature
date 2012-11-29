Feature: Admins can see index of students and link to show page
  In order to review all the applicants
  As an admin
  I want to be able to see an index of all the students with links to their
    full applications

  Scenario: As an admin user I can view an index of all students
    Given I am signed in as an admin
    When I go to /students
    Then I should see "All Current Applicants"

  Scenario: As student I should not be able to view an index of all students
    Given I am signed in
    When I go to /students
    Then I should see "You need to sign in or sign up before continuing."
