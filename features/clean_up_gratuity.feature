@javascript
Feature: Clean up Gratuities

Scenario Outline: Make sure 5 gratuities deleted
  Given I go to home page
  And click link "Login"
  And I login to Mokapos
  When I access Gratuity
  Then I should see <name> on gratuity list
  And I can delete gratuity

  Examples:
    | name  |
    |   1   |
    |   2   |
    |   3   |
    |   4   |
    |   5   |
