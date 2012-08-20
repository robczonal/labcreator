Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |email, password|  
      visit ('/admins/sign_in')  
      fill_in "Email", :with => email
      fill_in "Password", :with => password  
      click_button "Sign in"  
    end  

When /^I go to the new test page$/ do
    visit('/testxes/new') 

end

Given /^I write in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'testx_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I press test "(.*?)"$/ do |create|
  click_button('Create Testx')
end

Then /^I should be on the test show page$/ do
    visit('/testxes/1')
  page.should have_content("water content")
end
