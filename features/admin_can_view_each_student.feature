Feature: Admins can view the application of each student individually
  In order to review all the applicants
  As an admin
  I want to be able to see each student's application

  Scenario: As an admin user I can view an index of all students
    Given I am signed in as an admin
    And there is a student with the name "Student"
    When I go to /students
    And I click "Student"
    Then I should see the title "Review Your Application"
