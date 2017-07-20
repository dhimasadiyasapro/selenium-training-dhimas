@javascript
Feature: Check Moka Getting Started is As Simple As Ever

  Scenario: Make sure Getting Started has Big Title
    Given I go to home page
    Then I should see "Getting Started is As Simple As Ever" and "Just follow these steps and you are ready to open for business!"

  Scenario: Make sure Getting Started has Download Moka Panel
    Given I go to home page
    Then I should see Download Moka Panel

  Scenario: Make sure Download Moka Panel open iTunes page after click link App Store
    Given I go to home page
    And click link "App Store"
    Then I should see Moka iTunes page

  Scenario: Make sure Download Moka Panel open Google Playstore page after click link Play Store
    Given I go to home page
    And click link "Play Store"
    Then I should see Moka App Store page

  Scenario: Make sure Getting Started has Sign Up Panel
    Given I go to home page
    Then I should see Sign Up Panel

  Scenario: Make sure Download Moka Panel open iTunes page after click link App Store
    Given I go to home page
    And click link "Sign Up Now"
    Then I should see Sign Up page

  Scenario: Make sure Getting Started has Ready for Business Panel
    Given I go to home page
    Then I should see Ready for Business Panel

  Scenario: Make sure Standout at Checkout has Big title
    Given I go to home page
    Then I should see "Standout at Checkout" and "Feel like traditional cash registers are so 1960s? That's because they are. Upgrade now and sell in style!"

  Scenario: Make sure Standout at Checkout has Big picture
    Given I go to home page
    Then I should see Big picture
