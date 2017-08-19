@javascript
Feature: Create Employee Manager

  Scenario: Make sure able to invite Manager
    Given I have unverified Manager email
    When I try to invite with unverified Manager email
    And I try to verify invited Manager
    Then I should be able to login with verified Manager email
