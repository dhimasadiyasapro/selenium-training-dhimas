@javascript
Feature: Check title of webpage

  Scenario: Make sure title of webpage correctly spelled
    Given I go to home page
    And I visit dashboard
    When I login
    And I go to home page
    And I visit dashboard
    Then I should see dashboard page
