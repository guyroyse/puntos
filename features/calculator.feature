Feature: Points Calculator

  Scenario: Calculates the points value of typical food
    Given I am on the calculator page
    When I enter 5 grams of protein
      And I enter 5 grams of carbs
      And I enter 5 grams of fat
      And I enter 5 grams of fiber
      And I press calculate
    Then my food should have a points value of 2
    
  Scenario: Calculates the points value of high fiber food
    Given I am on the calculator page
    When I enter 5 grams of protein
      And I enter 5 grams of carbs
      And I enter 5 grams of fat
      And I enter 40 grams of fiber
      And I press calculate
    Then my food should have a points value of 0
    
  Scenario: Assumes that empty fields are 0
    Given I am on the calculator page
    When I press calculate
    Then my food should have a points value of 0