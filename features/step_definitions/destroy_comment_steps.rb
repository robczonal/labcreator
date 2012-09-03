Given /^I go to the project details dc page$/ do
  visit('/projects/1') 
end

And /^I filldc in "(.*?)" with "(.*?)"$/ do |value, text|
  #value = "Subject"
  value = 'comments_'+value.downcase
  fill_in(value,:with=>text)
end

And /^I filldcc in "(.*?)" with "(.*?)"$/ do |value, text|
  #value = "Comment"
  fill_in(value,:with=>text)
end

And /^I pressdc "(.*?)"$/ do |create|
  click_button(create)
end 

Then /^I pressdcc "(.*?)"$/ do |destroy|
  click_link(destroy)
end 

When /^I confirmdc popup$/ do
  page.driver.browser.switch_to.alert.accept    
end

#Then /^I shoulddc be on the project details page$/ do
#  visit('/projects/1')
#end

Then /^I shoulddc see "(.*?)"$/ do |text|
  page.should have_content(text)
end