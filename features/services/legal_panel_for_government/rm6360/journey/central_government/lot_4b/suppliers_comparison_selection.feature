@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 4b - Suppliers comparison selection

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 4b - International Trade Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Compliance with international law       |
      | Domestic law of jurisdictions for trade |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '14' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                     | http://blickgroup.test/odis_schneider           |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/milton.klein    |
      | JOHNSON LLC                     | http://johnsonllc.example/rima                  |
      | MCCLURE, THIEL AND FRAMI        | http://mcclurethielandframi.test/darius_stanton |
      | ROBERTS-ZEMLAK                  | http://roberts-zemlak.example/armandina_funk    |
      | RUECKER AND SONS                | http://rueckerandsons.example/edmond_upton      |
      | RUSSEL AND SONS                 | http://russelandsons.example/josiah             |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/piedad.collier    |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/corie         |
      | TOY-ROBERTS                     | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/dustin        |
      | ZIEMANN-CUMMERATA               | http://ziemann-cummerata.test/chuck.yost        |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page

  Scenario: The correct options are available
    Then I should see the following options for the lot:
      | BLICK GROUP                     |
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | JOHNSON LLC                     |
      | MCCLURE, THIEL AND FRAMI        |
      | ROBERTS-ZEMLAK                  |
      | RUECKER AND SONS                |
      | RUSSEL AND SONS                 |
      | SHIELDS-D'AMORE                 |
      | STARK, ADAMS AND KOZEY          |
      | TOY-ROBERTS                     |
      | WELCH, PAGAC AND SWIFT          |
      | ZIEMANN-CUMMERATA               |

  Scenario: Service selection appears in basked
    Then the basket should say 'No suppliers selected'
    And the remove all link should not be visible
    When I check 'COLLIER, AUFDERHAR AND VOLKMAN'
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
    When I check the following items:
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |

  Scenario: Changing the selection will change the basket
    When I check the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | MCCLURE, THIEL AND FRAMI        |
    Then the basket should say '4 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | MCCLURE, THIEL AND FRAMI        |
    When I deselect the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | MCCLURE, THIEL AND FRAMI        |
    When I remove the following items from the basket:
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | MCCLURE, THIEL AND FRAMI        |
    When I click on 'Remove all'
    Then the basket should say 'No suppliers selected'

  Scenario: Go back from suppliers and change selection
    When I check the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
