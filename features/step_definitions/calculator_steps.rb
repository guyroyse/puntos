Given /^I am on the calculator page$/ do
  @calculator = CalculatorPage.new(@browser)
  @calculator.visit  
end

When /^I enter (\d+) grams of ([a-z]+)$/ do |value, field_id|
  @calculator.set_field field_id, value
end

When /^I press calculate$/ do
  @calculator.calculate
end

Then /^my food should have a points value of (\d+)$/ do |points|
  @calculator.points.should == points
end
