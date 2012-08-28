Given /^I havere (\d+) x items in my basket$/ do |qty|
  @basket ||= [ ]
  @basket << (qty.to_i)
end

And /^I go to the project re equipment page$/ do
  visit('/projects/1/equip') 
end

When /^I pressre "(.*?)"$/ do |arg1|
  click_link('Remove')
end

And /^I confirmre popup$/ do
  page.driver.browser.switch_to.alert.accept    
end

Then /^I shouldre be on the project equipment page$/ do
  visit('/projects/1/equip')
end

And /^I shouldre have (\d+) x items in my basket$/ do |qty|
  @basket ||= [ ]
  @basket << (qty.to_i)
end