@javascript
Feature: Check Moka We Bring Your Business To The Next Level

  Scenario: Make sure Bring Your Business has Big title
    Given I go to home page
    And I visit "Bring Your Business" component
    Then I should see Bring Your Business content, including F&B, Service Business and Retail information

  Scenario: Make sure able to play F&B video
    Given I go to home page
    And I visit "Bring Your Business" component
    And click "F&B Video" button
    Then I should see Moka Video

  Scenario: Make sure able to play Service Business video
    Given I go to home page
    And I visit "Bring Your Business" component
    And click "Service Business" button
    Then I should see Moka Video

  Scenario: Make sure able to play Retail video
    Given I go to home page
    And I visit "Bring Your Business" component
    And click "Retail" button
    Then I should see Moka Video
