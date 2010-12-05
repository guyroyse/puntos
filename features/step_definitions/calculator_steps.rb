Given /^I am on the calculator page$/ do
  @calculator = CalculatorPage.new(@browser)
  @calculator.visit  
end

Given /^my food has (\d+) grams of protein$/ do |protein|
  @calculator.protein = protein
end

Given /^my food has (\d+) grams of carbs$/ do |carbs|
  @calculator.carbs = carbs
end

Given /^my food has (\d+) grams of fat$/ do |fat|
  @calculator.fat = fat
end

Given /^my food has (\d+) grams of fiber$/ do |fiber|
  @calculator.fiber = fiber
end

Then /^my food should have a points value of (\d+)$/ do |points|
  @calculator.points == 2
end
