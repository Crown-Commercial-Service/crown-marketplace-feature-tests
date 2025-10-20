Feature: Legal Panel for Government - Central governemnt - Lot 1 - Suppliers comparison selection

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 1 - Core Legal Services'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 1 - Core Legal Services'
    When I check the following items:
      | Assimilated Law       |
      | Aviation and Airports |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | CRUICKSHANK GROUP                 | http://cruickshankgroup.test/nathaniel            |
      | CRUICKSHANK, WISOKY AND HARBER    | http://cruickshankwisokyandharber.example/kirby   |
      | DECKOW, ALTENWERTH AND HALEY      | http://deckowaltenwerthandhaley.test/eleni.legros |
      | DONNELLY-RIPPIN                   | http://donnelly-rippin.example/britney.ruecker    |
      | DOUGLAS GROUP                     | http://douglasgroup.test/jenette_rolfson          |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN | http://kshlerinbrakusandchristiansen.test/eugenio |
      | KULAS, HINTZ AND DOYLE            | http://kulashintzanddoyle.example/joie            |
      | MURPHY LLC                        | http://murphyllc.test/troy                        |
      | NIENOW AND SONS                   | http://nienowandsons.test/geoffrey.hegmann        |
      | ROOB-WHITE                        | http://roob-white.example/raymond                 |
      | SCHOWALTER GROUP                  | http://schowaltergroup.example/carlos.collier     |
      | WOLFF, KRAJCIK AND PROSACCO       | http://wolffkrajcikandprosacco.test/buford        |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page

  Scenario: The correct options are available
    Then I should see the following options for the lot:
      | CRUICKSHANK GROUP                 |
      | CRUICKSHANK, WISOKY AND HARBER    |
      | DECKOW, ALTENWERTH AND HALEY      |
      | DONNELLY-RIPPIN                   |
      | DOUGLAS GROUP                     |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN |
      | KULAS, HINTZ AND DOYLE            |
      | MURPHY LLC                        |
      | NIENOW AND SONS                   |
      | ROOB-WHITE                        |
      | SCHOWALTER GROUP                  |
      | WOLFF, KRAJCIK AND PROSACCO       |

  Scenario: Service selection appears in basked
    Then the basket should say 'No suppliers selected'
    And the remove all link should not be visible
    When I check 'CRUICKSHANK GROUP'
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | CRUICKSHANK GROUP |
    When I check the following items:
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |

  Scenario: Changing the selection will change the basket
    When I check the following items:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
      | DONNELLY-RIPPIN                |
    Then the basket should say '4 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
      | DONNELLY-RIPPIN                |
    When I deselect the following items:
      | CRUICKSHANK GROUP |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | CRUICKSHANK, WISOKY AND HARBER |
      | DONNELLY-RIPPIN                |
      | DECKOW, ALTENWERTH AND HALEY   |
    When I remove the following items from the basket:
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | DONNELLY-RIPPIN |
    When I click on 'Remove all'
    Then the basket should say 'No suppliers selected'

  Scenario: Go back from suppliers and change selection
    When I check the following items:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And the following items should appear in the basket:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
