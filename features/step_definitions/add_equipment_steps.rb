Given /^I go to the project ae analyses page$/ do
  visit('/projects/1/analyses') 
end

Given /^I haveae analysis "(.*?)"$/ do |name|
  @analysis ||= [ ]
  @analysis << (name)
end

Given /^I haveae test "(.*?)"$/ do |test_name|
  @testx ||= [ ]
  @testx << (test_name)
end

When /^I clickae on "(.*?)"$/ do |test_name|
  click_link(test_name)
end

Then /^I clickaea on "(.*?)"$/ do |proc|
  click_link(proc) 
end

Then /^I clickaeb on "(.*?)"$/ do |update|
  click_button('Update Equipment')
end

Then /^I shouldae be on the project equipment page$/ do
  visit('/projects/1/equip') 
end
