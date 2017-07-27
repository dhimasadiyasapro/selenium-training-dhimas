@javascript
Feature: Check All in Pricing

  Scenario: Make sure All in Pricing has Big Title
    Given I go to home page
    And I visit "All in Pricing" component
    Then I should see All in Pricing contents
    And I should see component "All in Pricing" background page

  Scenario: Make sure TRY FREE NOW button on All in Pricing links to Sign Up page
    Given I go to home page
    And click link "TRY FREE NOW"
    Then I should see Sign Up page
