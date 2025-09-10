@accessibility
Feature: Management Consultancy - RM6309 - Sign in to my account - Accessibility

  Scenario: Sign in page
    When I go to the 'management consultancy' start page for 'RM6309'
    Then I am on the 'Find management consultants' page
    When I click on 'Start now'
    And I am on the 'Sign in to your management consultancy account' page
    Then the page should pass the accessibility checks
