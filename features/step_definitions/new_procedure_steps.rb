Given /^I go to the new procedure page$/ do
  visit('/procedurexes/new') 
   page.should have_content("New procedurex")
end

Given /^I fill "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'procedurex_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press proc "(.*?)"$/ do |create|
  click_button('Create Procedurex')
end

Then /^I should be on the procedure show page$/ do
  visit('/procedurexes')
end

And /^I should see proc "(.*?)"$/ do |text|
  page.should have_content(text)
end