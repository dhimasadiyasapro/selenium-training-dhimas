@javascript
Feature: Clean up Taxes

Scenario Outline: Make sure 5 tax deleted
  Given I go to home page
  And click link "Login"
  And I login to Mokapos
  When I access Tax
  Then I should see <name> on tax list
  And I can delete tax

  Examples:
    | name  |
    |   1   |
    |   2   |
    |   3   |
    |   4   |
    |   5   |
