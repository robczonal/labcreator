#Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |email, password|  
   #   visit ('/admins/sign_in')  
      #fill_in "Email", :with => email
      #fill_in "Password", :with => password  
      #click_button "Sign in"  
   # end  

#Given /^the following user records$/ do |table|
  #table.hashes.each do |hash|
    #Factory :user(factory, hash)
  #end
#end

#Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |email, password|  
 #      visit ('/admins/sign_in')  
 #     fill_in "Email", :with => email
  #    fill_in "Password", :with => password
 #     click_button "Sign in"  
 #   end  

Given /^I havent analysis "(.*?)"$/ do |name|
  @analysis = Analysis.new(:name =>name)
  @analysis.save
end

And /^I go to the new test page$/ do
   visit('/testxes/new') 
    #fill_in "Email", :with => "aberdeenlab@gmail.com"
    #fill_in "Password", :with => "meston209" 
    #click_button "Sign in"  
end

#And /^I log in as "([^\"]*)" with password "([^\"]*)"$/ do |email, password|  
#      fill_in "Email", :with => email
#      fill_in "Password", :with => password
#      click_button "Sign in"  
#   end  


Then /^I shouldx see "(.*?)"$/ do |text|
  page.should have_content(text)
end

When /^I write in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Name'
  fill_in(value,:with=>text)
end

And /^I selectnt "(.*?)" from "(.*?)"$/ do |analysis, menu|
	analysis = 'Crude Oil Analysis'
	menu = 'Analysis'
end

And /^I press test "(.*?)"$/ do |create|
  click_button(create)
end

Then /^I should nt see "(.*?)"$/ do |text|
  page.should have_content(text)
end
