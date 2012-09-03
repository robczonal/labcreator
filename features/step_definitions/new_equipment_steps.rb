Given /^I go to the new equipment page$/ do
  visit('/equipment/new') 
   page.should have_content("New equipment")
end

And /^I fillx in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'equipment_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press equip "(.*?)"$/ do |create|
  click_button(create)
end 

Then /^I should be on the equipment show page$/ do
 #visit('/equipment/1')
  page.should have_content("toaster")
end

Then /^I should see equip "(.*?)"$/ do |text|
  page.should have_content(text)
end