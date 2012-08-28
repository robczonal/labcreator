Given /^I go to the home page$/ do
  visit('/')
end

When /^I pressx "(.*?)"$/ do |arg1|
  click_link('Sign in')
end

Then /^I should be on the users sign_in page$/ do
  visit('/users/sign_in')
end

Given /^I writeu in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Email'
  fill_in(value,:with=>text)
end

And /^I writeur in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Password'
  fill_in(value,:with=>text)
end

When /^I clickx "(.*?)"$/ do |arg1|
  click_button('Sign in')
end

Then /^I shouldusu see "(.*?)"$/ do |text|
  page.should have_content(text)
end


