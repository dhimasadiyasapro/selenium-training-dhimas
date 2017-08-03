@javascript
Feature: Check Moka Login page

  Scenario: Make sure success login after input email and password then click sign in
    Given I go to home page
    And click link "Login"
    When I input "dhimas01dev@mailinator.com" on User Email
    And input "123456" on User Password
    And click sign in button
    Then I should see dashboard page
