@javascript
Feature: Create 5 Items

Scenario Outline: Make sure 5 items deleted
  Given I access Item Library
  When I search Item <name>
  Then I should see <name> on item list
  And I can delete item <name>

  Examples:
    | name  |
    |   1   |
    |   2   |
    |   3   |
    |   4   |
    |   5   |
