@accessibility
Feature: Sign in to my account - Legal Panel for Government - RM6360 - Accessibility

  Scenario: Sign in page
    When I go to the 'legal panel for government' start page for 'RM6360'
    Then I am on the 'Find legal services for government' page
    When I click on 'Start now'
    And I am on the 'Sign in to your legal panel for government account' page
    Then the page should be axe clean excluding ".ccs-contact-us"
