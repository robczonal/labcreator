Given /^I go to the edit procedure page$/ do
  visit('/procedurexes/1/edit') 
end

And /^I fill ep in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'procedurex_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press ep "(.*?)"$/ do |create|
  click_button(create)
end 

Then /^I should ep see "(.*?)"$/ do |text|
  page.should have_content(text)
end