Given /^I havenp testx "(.*?)"$/ do |name|
  @testx = Testx.new(:name =>name)
  @testx.save
end

Given /^I go to the new procedure page$/ do
  visit('/procedurexes/new') 
   page.should have_content("New procedurex")
end

When /^I fill "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'procedurex_'+value.downcase
  fill_in(value,:with=>text)
end

And /^I selectnp "(.*?)" from "(.*?)"$/ do |analysis, menu|
	analysis = 'Water Content'
	menu = 'Testx'
end

When /^I press np "(.*?)"$/ do |create|
  click_button('Create Procedurex')
end

#Then /^I should be on the procedure show page$/ do
  #visit('/procedurexes')
#end

Then /^I should see np "(.*?)"$/ do |text|
  page.should have_content(text)
end