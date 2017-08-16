@javascript
Feature: Create User without verification

  Scenario: Make sure create user without verification
    Given I've landing page
    When I try to create user
    Then I should get response list of unverified user creation

  Scenario: Make sure show error while login on unverified user
    Given I go to home page
    And click link "Login"
    When I input "devilman04@mailinator.com" on User Email
    And input "123456" on User Password
    And click sign in button
    Then I should see unverified user alert
