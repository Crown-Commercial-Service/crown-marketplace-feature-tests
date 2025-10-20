Feature: Sign in to my account - Legal Panel for Government - RM6360 - Buyer details

  Scenario: Save details for the buyer
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I click on 'Manage your details'
    And I am on the 'Your details' page
    And the following buyer details have been entered for 'Personal details':
      | Name      | Automation Tester |
      | Job title | Tester            |
    And the following buyer details have been entered for 'Organisation details':
      | Organisation name                  | Crown Commercial Service |
      | Type of public sector organisation | Government Policy        |
