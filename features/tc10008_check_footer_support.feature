@javascript
Feature: Check Moka Footer support

  Scenario: Make sure Footer Support's support center links to About page
    Given I go to home page
    And click footer "Support Center"
    Then I should see "How Can We Help You?" and "Real people, Real support We provide phone support for our customer from"

  Scenario: Make sure Footer Support's video tutorial links to Moka Youtube Channel
    Given I go to home page
    And click footer "Video Tutorial"
    Then I should see Moka Youtube channel

  Scenario: Make sure Footer Support's knowledge center links to Help Mokapos page
    Given I go to home page
    And click footer "Knowledge Center"
    Then I should see Help Mokapos page

  Scenario: Make sure Footer Support's handbook links to Help Mokapos page
    Given I go to home page
    And click footer "Handbook"
    Then I should see Moka Getting Started Guide

  Scenario: Make sure Footer Support has Mixpanel Badge
    Given I go to home page
    Then I should see Mixpanel Badge
