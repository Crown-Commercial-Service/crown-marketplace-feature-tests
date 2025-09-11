@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 4a - Suppliers comparison selection

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 4a - Trade and Investment Negotiations'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    When I check the following items:
      | Assimilated Law                         |
      | Domestic law of jurisdictions for trade |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                    | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                      | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                    | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/rossie      |
      | KESSLER INC                    | http://kesslerinc.example/ward                    |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                    | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/abram           |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page

  Scenario: The correct options are available
    Then I should see the following options for the lot:
      | ARMSTRONG GROUP                |
      | BLICK GROUP                    |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
      | FISHER-BASHIRIAN               |
      | JOHNSON LLC                    |
      | KASSULKE, RITCHIE AND KOCH     |
      | KESSLER INC                    |
      | SCHOWALTER GROUP               |
      | SMITH-DOYLE                    |
      | STARK, ADAMS AND KOZEY         |
      | WELCH, PAGAC AND SWIFT         |

  Scenario: Service selection appears in basked
    Then the basket should say 'No suppliers selected'
    And the remove all link should not be visible
    When I check 'ARMSTRONG GROUP'
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | ARMSTRONG GROUP |
    When I check the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | ARMSTRONG GROUP                |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |

  Scenario: Changing the selection will change the basket
    When I check the following items:
      | ARMSTRONG GROUP                |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
      | FISHER-BASHIRIAN               |
    Then the basket should say '4 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | ARMSTRONG GROUP                |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
      | FISHER-BASHIRIAN               |
    When I deselect the following items:
      | ARMSTRONG GROUP |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
      | FISHER-BASHIRIAN               |
    When I remove the following items from the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | FISHER-BASHIRIAN |
    When I click on 'Remove all'
    Then the basket should say 'No suppliers selected'

  Scenario: Go back from suppliers and change selection
    When I check the following items:
      | ARMSTRONG GROUP                |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And the following items should appear in the basket:
      | ARMSTRONG GROUP                |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
