Given /^I go to the new test page$/ do
    visit('/testxes/new') 
   page.should have_content("New testx")
end

Given /^I write in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'testx_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press test "(.*?)"$/ do |create|
  click_button('Create Testx')
end

Then /^I should be on the test show page$/ do
    visit('/testxes/1')
  page.should have_content("water content")
end
