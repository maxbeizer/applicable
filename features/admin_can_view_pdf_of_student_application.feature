Feature: Admins can view the application as a PDF
  In order to review each applicant effectively
  As an admin
  I want to be able to see each student's application as a PDF

  Scenario: As an admin user I can view an index of all students
    Given I am signed in as an admin
    And there is a student with the name "Student"
    When I go to /students
    And I click "Student"
    Then I should see the title "Review Your Application"
    When I click "Download as PDF"
    Then I should get a download with the filename "student_.pdf"
    # ^^ student_.pdf because this example does not have a last name
