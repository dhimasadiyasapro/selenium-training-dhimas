@javascript
Feature: Clean up Taxes

Scenario Outline: Make sure 5 tax deleted
  Given I access Tax
  Then I should see <name> on tax list
  And I can delete tax <name>

  Examples:
    | name  |
    |   1   |
    |   2   |
    |   3   |
    |   4   |
    |   5   |
