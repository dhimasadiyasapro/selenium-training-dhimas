@javascript
Feature: Check Moka We Bring Your Business To The Next Level

  Scenario: Make sure Bring Your Business has Big title
    Given I go to home page
    Then I should see "We Bring Your Business To The Next Level" and "Moka is a cloud-based Point of Sale (POS) for small and medium businesses, from boutique retailers, quick & full service restaurants, to multi-chain barbershops."

  Scenario: Make sure Bring Your Business has F&B image and information
    Given I go to home page
    Then I should see F&B image & information

  Scenario: Make sure able to play F&B video
    Given I go to home page
    And click ".col-md-4:nth-child(1)>.service-heading>.watch-video-link" button
    Then I should see Moka Video

  Scenario: Make sure Bring Your Business has Service Business image and information
    Given I go to home page
    Then I should see Service Business image and information

  Scenario: Make sure able to play Service Business video
    Given I go to home page
    And click ".col-md-4:nth-child(2)>.service-heading>.watch-video-link" button
    Then I should see Moka Video

  Scenario: Make sure Bring Your Business has Retail image and information
    Given I go to home page
    Then I should see Retail image and information

  Scenario: Make sure able to play Retail video
    Given I go to home page
    And click ".col-md-4:nth-child(3)>.service-heading>.watch-video-link" button
    Then I should see Moka Video
