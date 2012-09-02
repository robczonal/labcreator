Given /^I have created a project$/ do
  @p = Project.new(:name =>"Project 2", :id=>2)
  @p.save
end

And /^I visit the project summary page$/ do
  visit('/projects/2/summary')
end

And /^I have no analysess$/ do
  #@p.analyses=nil
  #@p.save
end

Then /^I should see the empty message "(.*?)"$/ do |text|
  page.should have_content(text)
end
