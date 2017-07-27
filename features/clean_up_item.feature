@javascript
Feature: Create 5 Items

Scenario Outline: Make sure 5 items deleted
  Given I go to home page
  And click link "Login"
  And I login to Mokapos
  When I access Item Library
  And I search Item <name>
  Then I should see <name> on item list
  And I can delete item

  Examples:
    | name  |
    |   1   |
    |   2   |
    |   3   |
    |   4   |
    |   5   |
