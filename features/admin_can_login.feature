Feature: Admins can see the admin dashboard
  In order to review all the applicants
  As an admin
  I want to be able to see the admin dashboard with the students

  Scenario: As an admin user, I can login
    Given I am on the homepage
    When I click "Admin"
    Then I should be on /admin/login

  Scenario: As an admin user, I can see the admin dashboard
    Given I am signed in as an admin
    When I go to /admin/login
    Then I should be on /admin
    And I should see "Dashboard"

  Scenario: As a regular user who is signed in, I am redirected admin login
    Given I am signed in
    When I go to /admin
    Then I should be on /admin/login
    And I should not see "Dashboard"
