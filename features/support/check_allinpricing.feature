@javascript
Feature: Check All in Pricing

  Scenario: Make sure All in Pricing has Big Title
    Given I go to home page
    Then I should see "All In Pricing" and "We offer you a simple, all in pricing without contract and free support to optimize your business experience."

  Scenario: Make sure All in Pricing has 250K per month image
    Given I go to home page
    Then I should see 250K per month image

  Scenario: Make sure TRY FREE NOW button on All in Pricing links to Sign Up page
    Given I go to home page
    And click link "TRY FREE NOW"
    Then I should see Sign Up page

  Scenario: Make sure All in Pricing has No Contract information
    Given I go to home page
    Then I should see this image (".col-md-4:nth-child(1)>.img-details-pricing>img", "https://www.mokapos.com/assets/home/no-contract-b9ada0ea6e75a8839e7c9c2ef2ac084c.png") and information "No Contract"

  Scenario: Make sure All in Pricing has Unlimited Products information
    Given I go to home page
    Then I should see this image (".col-md-4:nth-child(2)>.img-details-pricing>img", "https://www.mokapos.com/assets/home/unlimited-product-b7448bec1b4ec225ceb5342f87dd69ce.png") and information "Unlimited Products"

  Scenario: Make sure All in Pricing has Free Support information
    Given I go to home page
    Then I should see this image (".col-md-4:nth-child(3)>.img-details-pricing>img", "https://www.mokapos.com/assets/home/free-support-0eb863947e8c4eef09b79697ce5cd775.png") and information "Free Support"

  Scenario: Make sure able to check component's background image
    Given I go to home page
    Then I should see component background page with source ".container-fluid.section-34" and target "https://www.mokapos.com/assets/home/Home-Testi-Background-ba61632a7a572afd4220c945bc0cf807.jpg"
