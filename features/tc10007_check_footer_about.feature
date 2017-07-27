@javascript
Feature: Check Moka Footer About

  Scenario: Make sure Footer About's about links to About page
    Given I go to home page
    And I visit "Footer" component
    And click link "About"
    Then I should see "About Us" and "We are empowering merchants to sell and grow."

  Scenario: Make sure Footer About's privacy policy links to About page
    Given I go to home page
    And I visit "Footer" component
    And click link "Privacy Policy"
    Then I should see "Privacy Policy" and "Moka's Privacy Policy"

  Scenario: Make sure Footer About's terms of service links to About page
    Given I go to home page
    And I visit "Footer" component
    And click link "Term of Services"
    Then I should see "Terms of Service" and "Amendments"

  Scenario: Make sure Footer About's career links to About page
    Given I go to home page
    And I visit "Footer" component
    And click link "Career"
    Then I should see "Join our world-class team" and "Looking for a new challenge? We're looking for great people to join our growing team."

  Scenario: Make sure Footer About's blog links to About page
    Given I go to home page
    And I visit "Footer" component
    And click link "Blog"
    Then I should see "A CUP OF MOKA" and "LATEST ARTICLES"
