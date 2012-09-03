Given /^I go asi to the home page$/ do
  visit('/')
end

When /^I press asi "(.*?)"$/ do |text|
  click_link(text)
end

Then /^I should be on the admins sign_in page$/ do
  visit('/admins/sign_in')
end

Given /^I fill asi in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Email'
  fill_in(value,:with=>text)
end

And /^I fill aasi in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Password'
  fill_in(value,:with=>text)
end

When /^I click asi "(.*?)"$/ do |text|
  click_button(text)
end

Then /^I should asi see "(.*?)"$/ do |text|
  page.should have_content(text)
end