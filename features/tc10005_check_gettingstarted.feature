@javascript
Feature: Check Moka Getting Started is As Simple As Ever

  Scenario: Make sure Getting Started has Big Title
    Given I go to home page
    And I visit "Getting Started" component
    Then I should see Getting Started content

  Scenario: Make sure Download Moka Panel open iTunes page after click link App Store
    Given I go to home page
    And I visit "Getting Started" component
    And click link "App Store"
    Then I should see Moka iTunes page

  Scenario: Make sure Download Moka Panel open Google Playstore page after click link Play Store
    Given I go to home page
    And I visit "Getting Started" component
    And click link "Play Store"
    Then I should see Moka App Store page

  Scenario: Make sure Download Moka Panel open iTunes page after click link App Store
    Given I go to home page
    And I visit "Getting Started" component
    And click link "Sign Up Now"
    Then I should see Sign Up page
