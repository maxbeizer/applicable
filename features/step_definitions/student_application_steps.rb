Given /^I have started an application already$/ do
  Fabricate(:student_application)
end

Then /^I have not started an application yet$/ do
# no fabrication
end
