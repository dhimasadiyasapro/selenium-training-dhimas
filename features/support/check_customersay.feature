@javascript
Feature: Check Moka What Our Customer Say

  Scenario: Make sure What Our Customers Say has Big Title
    Given I go to home page
    Then I should see "What Our Customers Say" and "Testimonials of our customers across Indonesia."

  Scenario: Make sure What Our Customer Say show Testimonial Slider
    Given I go to home page
    Then I should see slider

  Scenario: Make sure What Our Customer Say show Next Testimonial Slider
    Given I go to home page
    And click slider right arrow
    Then I should see next slider

  Scenario: Make sure What Our Customer Say show Previous Testimonial Slider
    Given I go to home page
    And click slider left arrow
    Then I should see prev slider 

  Scenario: Make sure As Featured On has Big Title and Featuring Logos
    Given I go to home page
    Then I should see "As Featured On" and Featuring Logos
