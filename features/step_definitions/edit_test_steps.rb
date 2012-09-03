Given /^I go to the edit test page$/ do
  visit('/testxes/1/edit') 
end

And /^I fill et in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'testx_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press et "(.*?)"$/ do |create|
  click_button(create)
end 

Then /^I should et see "(.*?)"$/ do |text|
  page.should have_content(text)
end