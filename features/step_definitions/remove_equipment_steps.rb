Given /^I have created a re project$/ do
  @p = Project.new(:name =>"Project 1", :id=>1)
  @p.save
end

Given /^I havere (\d+) x items in my basket$/ do |qty|
  @p.baskets ||= [ ]
  @p.baskets << (qty.to_i)
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
  @p.basket ||= [ ]
  @p.basket << (qty.to_i)
end