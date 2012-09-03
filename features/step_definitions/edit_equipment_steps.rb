Given /^I have created an equipment$/ do
  @e = Equipment.new(:id=>1)
  @e.save
end

Given /^I go to the edit equipment page$/ do
  visit('/equipment/1/edit') 
end

And /^I fill ee in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'equipment_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press ee "(.*?)"$/ do |create|
  click_button(create)
end 

Then /^I should ee see "(.*?)"$/ do |text|
  page.should have_content(text)
end