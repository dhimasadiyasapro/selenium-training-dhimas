@javascript
Feature: Create User until login success

  Scenario: Make sure user created then login success
    Given I have unverified dhimas email
    When I try to register the email
    And I try to verify regitration email
    Then I should be able to login with dhimas email
