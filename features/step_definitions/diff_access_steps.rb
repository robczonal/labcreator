Given /^I go ua to the home page$/ do
  visit('/')
end

When /^I press ua "(.*?)"$/ do |text|
  click_link(text)
end

Then /^I should ua be on the admins sign_in page$/ do
  visit('/admins/sign_in')
end

Given /^I fill ua in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Email'
  fill_in(value,:with=>text)
end

And /^I fill aua in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Password'
  fill_in(value,:with=>text)
end

When /^I click ua "(.*?)"$/ do |text|
  click_button(text)
end

Then /^I should ua see "(.*?)"$/ do |text|
  page.should have_content(text)
end