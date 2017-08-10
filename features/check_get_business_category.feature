@javascript
Feature: Check get_business_categories

  Scenario: Getting get_business_categories
    Given I've landing page
    When I try to check business categories
    Then I should get response list of business categories by id
