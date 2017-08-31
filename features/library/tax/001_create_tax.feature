@javascript
Feature: Create 5 Taxes

Scenario Outline: Make sure 5 tax created
  Given I access Tax
  And I create tax with <name> and <value>
  Then I should see <name> on tax list
  And I should see number of tax

  Examples:
    | name  | value |
    |   1   | 10    |
    |   2   | 10    |
    |   3   | 10    |
    |   4   | 10    |
    |   5   | 10    |
