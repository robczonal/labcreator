Given /^I go to the project details page$/ do
  visit('/projects/1') 
end

And /^I fill in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'project_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press "(.*?)"$/ do |create|
  click_button('Create Comment')
end 

Then /^I should be on the project details page$/ do
  visit('/projects/1')
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content(text)
end