@javascript
Feature: Check Moka Navbar

  Scenario: Make sure home page has Moka logo
    Given I go to home page
    Then I should see moka logo

  Scenario: Make sure About link links to About page
    Given I go to home page
    And click link "ABOUT"
    Then I should see "About Us" and "We are empowering merchants to sell and grow."

  Scenario: Make sure Features link links to Features page
    Given I go to home page
    And click link "FEATURES"
    Then I should see "Simple, Yet Powerful" and "We take care of the details, so you can focus on running and growing your business."

  Scenario: Make sure Hardware link links to Hardware page
    Given I go to home page
    And click link "HARDWARE"
    Then I should see "Beautiful Design" and "Moka POS is specially crafted to make your stores stand out."

  Scenario: Make sure Support link links to Support page
    Given I go to home page
    And click link "SUPPORT"
    Then I should see "How Can We Help You?" and "Real people, Real support"

  Scenario: Make sure Login link links to Login page
    Given I go to home page
    And click link "Login"
    Then I should see "Email" and "Password"

  Scenario: Make sure Home page has phone information and language Option
    Given I go to home page
    And click Moka logo
    Then I should see "1500970" and "Eng"
