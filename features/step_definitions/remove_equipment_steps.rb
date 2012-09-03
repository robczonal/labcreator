Given /^I have created a re project$/ do
  @p = Project.new(:name =>"Project 1", :id=>1)
  @p.save
end

Given /^I have created two re equipments$/ do
  @eq = Equipment.new(:id=>2)
  @eq.save
  @equ = Equipment.new(:id=>3)
  @equ.save
end

Given /^I havere two items in my basket$/ do 
  @p.baskets ||= [ ]
  @p.baskets << ( )
end

#Given /^I havere (\d+) x items in my basket$/ do |qty|
 # @p.baskets ||= [ ]
 # @p.baskets << (qty.to_i)
#end

And /^I go to the project re equipment page$/ do
  visit('/projects/1/equip') 
end

When /^I pressre "(.*?)"$/ do |text|
  click_link(text)
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