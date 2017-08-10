@javascript
Feature: Check Email

  Scenario: Checking Email
    Given I've unverified email
    When I try to verifying the email
    Then I should get response the email is not present
