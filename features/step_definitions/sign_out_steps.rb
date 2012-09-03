Given /^I go so to the home page$/ do
  visit('/')
end

When /^I press so "(.*?)"$/ do |text|
  click_link(text)
end

Then /^I should so be on the users sign_in page$/ do
  visit('/users/sign_in')
end

Given /^I writeso in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Email'
  fill_in(value,:with=>text)
end

And /^I writeuso in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Password'
  fill_in(value,:with=>text)
end

When /^I click so "(.*?)"$/ do |text|
  click_button(text)
end

Then /^I should so see "(.*?)"$/ do |text|
  page.should have_content(text)
end

When /^I click uso "(.*?)"$/ do |text|
  click_link(text)
end

Then /^I should uso see "(.*?)"$/ do |text|
  page.should have_content(text)
end