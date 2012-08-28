Given /^I dp go to the projects page$/ do
  visit('/projects') 
   page.should have_content("Projects")
end

And /^I pressdp "(.*?)"$/ do |destroy|
  click_button('Destroy')
end 

When /^I confirmdp popup$/ do
  page.driver.browser.switch_to.alert.accept    
end

Then /^I shoulddp be on the projects page$/ do
  visit('/projects')
  page.should have_content("project 1")
end

Then /^I shoulddp see "(.*?)"$/ do |text|
  page.should have_content(text)
end