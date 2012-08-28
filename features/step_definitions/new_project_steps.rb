Given /^I have one\s+user with email "([^\"]*)" and password "([^\"]*)"$/ do |email, password|
  @user = User.new(:email => email,
                   :password => password,
                   :password_confirmation => password)
   @user.save!
end

#Given /^I am an authenticated user$/ do
#  email = 'test@test.com'
#  password = 'password'

#  Given %{I have one user with email "#{email}" and password "#{password}"}
#  And %{I go to the user login page}
#  And %{I fill in "user_email" with "#{email}"}
#  And %{I fill in "user_password" with "#{password}"}
#  And %{I press "Sign in"}
#end

Given /^I gonp to the new project page$/ do
  visit('/projects/new') 
   page.should have_content("New project")
end

And /^I fillnp in "(.*?)" with "(.*?)"$/ do |value, text|
  value = 'project_'+value.downcase
  fill_in(value,:with=>text)
end

When /^I pressnp "(.*?)"$/ do |create|
  click_button('Create Project')
end 

Then /^I shouldnp be on the project show page$/ do
  visit('/projects/1')
end

Then /^I shouldnp see "(.*?)"$/ do |text|
  page.should have_content(text)
end


