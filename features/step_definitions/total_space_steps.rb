Given /^I havets (\d+) x (\d+) square mm item in my basket$/ do |qty, space|
  @basket ||= [ ]
  @basket << (qty.to_i * space.to_i)
end

And /^I go to the project ts summary page$/ do
  visit('/projects/1/summary') 
end

Then /^Total Surface Space = (.+)$/ do |expected_total|
@basket.inject(0) {|memo, item| memo += item}.should eql(expected_total.to_i)
end