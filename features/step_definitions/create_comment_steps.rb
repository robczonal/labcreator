Given /^I go to the project details cc page$/ do
  visit('/projects/1') 
end

And /^I fillcc in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'project_'+value.downcase
  fill_in(value,:with=>text)
end

And /^I fillccc in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'project_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I presscc "(.*?)"$/ do |create|
  click_button('Create Comment')
end 

Then /^I shouldcc be on the project details page$/ do
  visit('/projects/1')
end

Then /^I shouldcc see "(.*?)"$/ do |text|
  page.should have_content(text)
end