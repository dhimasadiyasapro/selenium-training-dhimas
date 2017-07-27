@javascript
Feature: Check Moka Home Jumbotron

  Scenario: Make sure home jumbotron has all its contents
    Given I go to home page
    Then I should see jumbotron contents

  Scenario: Make sure GET FREE 30-DAY TRIAL button links to Sign Up page
    Given I go to home page
    And click link "GET FREE 30-DAY TRIAL"
    Then I should see Sign Up page

  Scenario: Make sure able to access link iTunes
    Given I go to home page
    And click link iTunes
    Then I should see Moka iTunes page

  Scenario: Make sure able to access link App Store
    Given I go to home page
    And click link App Store
    Then I should see Moka App Store page

  Scenario: Make sure able to play video
    Given I go to home page
    And click "Moka Video" button
    Then I should see Moka Video
