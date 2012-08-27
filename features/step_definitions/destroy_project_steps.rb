Given /^I go to the project page$/ do
  visit('/projects') 
   page.should have_content("Projects")
end

And /^I press "(.*?)"$/ do |create|
  click_link('Destroy')
end 

When /^I confirm popup$/ do
  page.driver.browser.switch_to.alert.accept    
end

Then /^I should be on the project page$/ do
  visit('/projects')
  page.should have_content("project 1")
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content(text)
end