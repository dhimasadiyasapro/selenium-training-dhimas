@javascript
Feature: Check Moka Get Free 30-Day Trial

  Scenario: Make sure Get Free 30-Day Trial has Big Title
    Given I go to home page
    Then I should see "Get Free 30-Day Trial" and "No contract. No credit card required."

  Scenario: Make sure Get Free 30-Day Trial shows Contact Phone Number
    Given I go to home page
    Then I should see "Call Us :" and "1500970"

  Scenario: Make sure Start Free Trial Now button on Get Free 30-Day Trial links to Sign Up page
    Given I go to home page
    And click link "START FREE TRIAL NOW"
    Then I should see Sign Up page
