Feature: Points Calculator

  Scenario: Calculates the points value of typical food
    Given I am on the calculator page
    And my food has 5 grams of protein
    And my food has 5 grams of carbs
    And my food has 5 grams of fat
    And my food has 5 grams of fiber
    Then my food should have a points value of 2
    
  Scenario: Calculates the points value of high fiber food
    Given I am on the calculator page
    And my food has 5 grams of protein
    And my food has 5 grams of carbs
    And my food has 5 grams of fat
    And my food has 40 grams of fiber
    Then my food should have a points value of 0