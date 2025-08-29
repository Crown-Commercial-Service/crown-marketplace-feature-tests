@mobile
Feature: Management Consultancy - Headers are responsive

  Scenario: Signed in and the navigation links are responsive
    Given I sign in and navigate to the start page for the 'RM6309' framework in 'management consultancy'
    And the header navigation links 'are not' visible
    Then I click on 'Menu'
    And the header navigation links 'are' visible
    Then I click on 'Back to start'
    Then I am on the 'Select the lot you need' page
