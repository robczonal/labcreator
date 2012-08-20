Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |email, password|  
      visit ('/admins/sign_in')  
      fill_in "Email", :with => email
      fill_in "Password", :with => password  
      click_button "Sign in"  
    end  

Given /^I go to the new test page$/ do
    visit('/testxes/new') 
end

When /^I write in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'Name'
  fill_in(value,:with=>text)
end

And /^I press test "(.*?)"$/ do |create|
  click_button('Create Testx')
end

Then /^I should be on the test show page$/ do
    visit('/testxes/1')
  page.should have_content("water content")
end
