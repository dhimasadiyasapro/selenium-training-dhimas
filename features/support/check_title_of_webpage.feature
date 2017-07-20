@javascript
Feature: Check title of webpage

  Scenario: Make sure title of webpage correctly spelled
    Given I go to home page
    Then I should see title "MOKA Point of Sale"
