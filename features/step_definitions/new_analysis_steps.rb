Given /^I go to the new analysis page$/ do
    visit('/analyses/new') 
   page.should have_content("New analysis")
end

And /^I filly in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'analysis_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press analysis "(.*?)"$/ do |create|
  click_button(create)
end 

Then /^I shouldna see "(.*?)"$/ do |text|
  page.should have_content(text)
end
