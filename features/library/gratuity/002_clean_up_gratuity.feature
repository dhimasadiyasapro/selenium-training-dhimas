@javascript
Feature: Clean up Gratuity

Scenario Outline: Make sure 5 gratuity deleted
  Given I access Gratuity
  Then I should see <name> on gratuity list
  And I can delete gratuity <name>

  Examples:
    | name  |
    |   1   |
    |   2   |
    |   3   |
    |   4   |
    |   5   |
