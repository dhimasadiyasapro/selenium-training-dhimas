@javascript
Feature: Create 5 Items

Scenario: Make sure login success
  Given I go to home page
  And click link "Login"
  And I login to Mokapos
  When I access Item Library
  Then I should see Item Library page

Scenario Outline: Make sure 5 items created
  Given I create item with <name> and <price>
  Then I should see <name> on item list
  And I should see number of item

  Examples:
    | name  | price |
    |   1   | 10000 |
    |   2   | 20000 |
    |   3   | 20000 |
    |   4   | 20000 |
    |   5   | 20000 |
