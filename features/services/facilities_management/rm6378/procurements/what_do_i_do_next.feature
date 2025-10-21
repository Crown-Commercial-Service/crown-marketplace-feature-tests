Feature: Facilities Management - What do I do next

  Background: I navigate to the What do I do next page
    Given I sign in and navigate to the start page for the 'RM6378' framework in 'facilities management'
    And I have a procurement with the name 'My WDIDN procurement' for 'RM6378'
    And I am on the 'What do I do next?' page

  @smoulder @production
  Scenario: The content is correct
    And the procurement name is shown to be 'My WDIDN procurement'
    And the contract number is visible with the contract name 'My WDIDN procurement' for 'RM6378'
    Then the following content should be displayed on the page:
      | Step 1 - download your results                                            |
      | You can download your shortlisted supplier list now, which also contains: |
      | Step 2 - read about how to buy                                            |
      | Visit the Facilities Management and Workplace Services framework page for |
      | information on how to procure via this framework, including:              |

  @file-download @smoulder @production
  Scenario: Download the supplier spreadsheet
    And I click on 'Selected suppliers'
    Then the facilities management file for 'My WDIDN procurement' is downloaded with the 'xlsx' extension

  Scenario: Back button link
    And I click on 'Return to saved searches'
    Then I am on the 'Saved searches' page

  Scenario: Return link
    And I click on 'Return to your account'
    And I am on the 'Your account' page
