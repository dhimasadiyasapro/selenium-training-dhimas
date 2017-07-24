@javascript
Feature: Check Moka Home Jumbotron

  Scenario: Make sure home jumbotron has big title
    Given I go to home page
    Then I should see "Selling Made Easy" and "Setup your Mobile Point of Sale in minutes and run your business from anywhere."

  Scenario: Make sure home jumbotron has GET FREE 30-DAY TRIAL button
    Given I go to home page
    Then I should see "GET FREE 30-DAY TRIAL"

  Scenario: Make sure GET FREE 30-DAY TRIAL button links to Sign Up page
    Given I go to home page
    And click link "GET FREE 30-DAY TRIAL"
    Then I should see Sign Up page

  Scenario: Make sure home jumbotron has link iTunes and App Store
    Given I go to home page
    Then I should see link iTunes and App Store

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

  Scenario: Make sure able to check component's background image
    Given I go to home page
    Then I should see component background page with source ".container-fluid.container-content-index.visible-md.visible-lg.section-1" and target "https://www.mokapos.com/assets/home/jumbotron-homepage2-3ed64fa913ceff68389ed7041bfd0207.jpg"
