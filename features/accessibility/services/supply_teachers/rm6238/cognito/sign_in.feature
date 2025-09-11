@accessibility
Feature: Supply Teachers - RM6238 - Sign in to my account - Accessibility

  Scenario: Sign in page
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    When I click on 'Start now'
    Then I am on the 'Sign in to find supply teachers and agency workers' page
    And I click on 'Sign in with CCS'
    And I am on the 'Sign in to your supply teachers account' page
    Then the page should pass the accessibility checks
