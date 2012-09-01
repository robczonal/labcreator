Given /^I have created a tc project$/ do
  @pr = Project.new(:name =>"Project 1", :id=>1)
  @pr.save
end

Given /^I have (\d+) x \$(\d+) item in my basket$/ do |qty, price|
  @basket ||= [ ]
  @basket << (qty.to_i * price.to_i)
end

And /^I visit the tc project summary page$/ do
  visit('/projects/1/summary')
end

Then /^Total Cost = \$(.+)$/ do |expected_total|
@basket.inject(0) {|memo, item| memo += item}.should eql(expected_total.to_i)
end

