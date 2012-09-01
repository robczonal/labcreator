Given /^I go to the project details dc page$/ do
  visit('/projects/1') 
end

And /^I pressdc "(.*?)"$/ do |destroy|
  click_button('Destroy Comment')
end 

When /^I confirmdc popup$/ do
  page.driver.browser.switch_to.alert.accept    
end

Then /^I shoulddc be on the project details page$/ do
  visit('/projects/1')
end

Then /^I shoulddc see "(.*?)"$/ do |text|
  page.should have_content(text)
end