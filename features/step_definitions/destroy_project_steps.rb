Given /^I dp go to the projects page$/ do
  visit('/projects') 
   page.should have_content("Projects")
end

And /^I pressdp "(.*?)"$/ do |destroy|
  page.should have_link(destroy)
  click_link(destroy)
end 

When /^I confirmdp popup$/ do
  page.evaluate_script('window.confirm = function() { return true; }')
page.click('Remove')
  #page.driver.browser.switch_to.alert.accept    
end

Then /^I shoulddp be on the projects page$/ do
  visit('/projects')
end

Then /^I shoulddp see "(.*?)"$/ do |text|
  page.should have_content(text)
end