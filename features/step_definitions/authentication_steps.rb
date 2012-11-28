When /^I sign out$/ do
  step %{I click "Sign Out"}
end

Given /^there is a student "(.*?)" with password "(.*?)"$/ do |email, password|
  @student = Fabricate(:student, email: email, password: password, password_confirmation: password)
end

Given /^there is a student with the name "(.*?)"$/ do |first_name|
  @student = Fabricate(:student, first_name: first_name)
end

Given /^I am signed in as "(.*?)"$/ do |email|
  @student = Fabricate(:student, email: email)
  sign_in_as @student
end

Given /^I am signed in$/ do
  @student = Fabricate(:student)
  sign_in_as @student
end

Given /^I am signed in as an admin$/ do
  @admin_user = Fabricate(:admin_user)
  admin_sign_in @admin_user
end

Given /^I am not signed in$/ do
  delete destroy_student_session_path
end

And /^I should see the student's email$/ do
  @student = Fabricate(:student)
  @student.email
end

def sign_in_as student
  steps %Q{
    Given I am on the homepage
    When I click "Sign In"
    And I fill in "#{student.email}" for "Email"
    And I fill in "password" for "Password"
    And I click "Sign in"
    Then I should see "Signed in successfully."
  }
end

def admin_sign_in admin_user
  steps %Q{
    Given I am on /admin/login
    And I fill in "#{admin_user.email}" for "Email"
    And I fill in "password" for "Password"
    When I click "Login"
  }
end
