Given /^I have created a ae project$/ do
  @pro = Project.new(:id=>1)
  @pro.save
end

Given /^I haveae analysis "(.*?)"$/ do |name|
  @analysis = Analysis.new(:name => name)
  @analysis.save
end

Given /^I haveae test "(.*?)"$/ do |test_name|
  @testx = Testx.new(:name =>test_name, :id => 1)
  @testx.save
end

Given /^I haveae procedure "(.*?)"$/ do |proc|
  @proc = Procedurex.new(:name =>proc, :id => 1, :testx_id => 1)
  @proc.save
end

Given /^I haveae equipcat "(.*?)"$/ do |equipcat|
  @ec = Equipcat.new(:name =>equipcat, :id => 1)
  @ec.save
end

Given /^I haveae equipment "(.*?)"$/ do |equip|
  @eq = Equipment.new(:name =>equip, :equipcat_id =>1)
  @eq.save
end

Given /^I haveae ingredient "(.*?)"$/ do |ingred|
  @i = Ingredients.new(:quantity =>ingred, :procedurex_id => 1, :equipcat_id =>1)
  @i.save
end

#Given /^I go ae to the new procedure page$/ do
#  visit('/procedurexes/new') 
#end

#When /^I fillae "(.*?)" with "(.*?)"$/ do |value, text|
#  value = 'procedurex_'+value.downcase
#  fill_in(value,:with=>text)
#end

#And /^I selectaeb "(.*?)" from "(.*?)"$/ do |test, menu|
#	test = 'Water Content'
#	menu = 'Testx'
#end

#And /^I press ae "(.*?)"$/ do |create|
#  click_button('Create Procedurex')
#end

And /^I go to the project ae analyses page$/ do
  visit('/projects/1/analyses') 
end

And /^I selectae "(.*?)" from "(.*?)"$/ do |analysis, menu|
	analysis = 'Crude Oil Analysis'
	menu = 'Add Analysis'
end

Then /^I clickaec on "(.*?)"$/ do |update|
  #click_button(update)
  %{I press (update)}
end

And /^I selectaea "(.*?)" from "(.*?)"$/ do |test, menu|
	test = 'Water Content'
	menu = 'Add Test'
end

Then /^I clickaed on "(.*?)"$/ do |update|
  #click_button(update)
  %{I press (update)}
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
