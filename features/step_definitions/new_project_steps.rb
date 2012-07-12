Given /^I go to the new project page$/ do
  visit('/projects/new') 
   page.should have_content("New project")
end

And /^I fill in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'project_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press "(.*?)"$/ do |create|
  click_button('Create Project')
end 

Then /^I should be on the project show page$/ do
  visit('/projects/1')
  page.should have_content("project 1")
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content(text)
end