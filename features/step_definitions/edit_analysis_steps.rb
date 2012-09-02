Given /^I go to the edit analysis page$/ do
  visit('/analyses/1/edit') 
end

And /^I fillea in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'analysis_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I pressea "(.*?)"$/ do |create|
  click_button(create)
end 

Then /^I shouldea see "(.*?)"$/ do |text|
  page.should have_content(text)
end