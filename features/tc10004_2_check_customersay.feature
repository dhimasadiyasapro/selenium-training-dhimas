@javascript
Feature: Check Moka What Our Customer Say

  Scenario: Make sure What Our Customers Say has Big Title
    Given I go to home page
    And I visit "What Customer Say" component
    Then I should see What Customers Say

  Scenario: Make sure What Our Customer Say show Testimonial Slider
    Given I go to home page
    And I visit "What Customer Say" component
    Then I should see slider

  Scenario: Make sure What Our Customer Say show Next Testimonial Slider
    Given I go to home page
    And I visit "What Customer Say" component
    And click slider right arrow
    Then I should see next slider

  Scenario: Make sure What Our Customer Say show Previous Testimonial Slider
    Given I go to home page
    And I visit "What Customer Say" component
    And click slider left arrow
    Then I should see prev slider
