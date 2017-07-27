@javascript
Feature: Check Moka Get Free 30-Day Trial

  Scenario: Make sure Get Free 30-Day Trial has Big Title
    Given I go to home page
    And I visit "Get 30-day Free Trial" component
    Then I should see Get Free 30-day Trial content

  Scenario: Make sure Start Free Trial Now button on Get Free 30-Day Trial links to Sign Up page
    Given I go to home page
    And I visit "Get 30-day Free Trial" component
    And click link "START FREE TRIAL NOW"
    Then I should see Sign Up page
