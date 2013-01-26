Feature: Admins can delete students
  In order to maintain a clean database
  As an admin
  I want to be able to remove specific students from the database

    Background:
      Given I am signed in as an admin
      And there is a student with the name "Spam Student"
      And there is a student with the name "Valid Student"
      Then I should see 2 students in the database

    Scenario: As an admin, I will see both students on the index page
      When I go to /students
      Then I should see "Spam Student"
      And I should see "Valid Student"

    Scenario: As an admin, I can delete a specific student
      When I go to /students
      And I click "Spam Student"
      And I click "Delete This Student"
      Then I should be on /students
      And I should not see "Spam Student"
      And I should see "Valid Student"
      And I should see 1 student in the database

