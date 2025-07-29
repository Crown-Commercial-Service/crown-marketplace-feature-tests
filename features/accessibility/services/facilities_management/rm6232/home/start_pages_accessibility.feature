@accessibility
Feature: Facilities Management - Start pages accessibility

  Scenario: Service start page
    When I go to the 'facilities management' start page for 'RM6232'
    Then I am on the 'Find a facilities management supplier' page
    Then the page should be axe clean excluding ".ccs-contact-us"

  Scenario: Log in page
    When I go to the 'facilities management' start page for 'RM6232'
    Then I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    Then I am on the 'Sign in to your account' page
    Then the page should be axe clean excluding ".ccs-contact-us"

  Scenario: Start page
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    Then the page should be axe clean excluding ".ccs-contact-us"
