@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 2 - Suppliers comparison selection

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 2 - Major Projects and Complex Advice'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 2 - Major Projects and Complex Advice'
    When I check the following items:
      | Competition Law |
      | Contracts       |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '18' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BATZ-BROWN                     | http://batz-brown.test/edris.oconner                    |
      | BLICK GROUP                    | http://blickgroup.test/kitty_zulauf                     |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/heide.runolfsson |
      | DOUGLAS GROUP                  | http://douglasgroup.test/claudio_blick                  |
      | JOHNSON LLC                    | http://johnsonllc.example/vicente                       |
      | KUHLMAN, ORTIZ AND LOCKMAN     | http://kuhlmanortizandlockman.example/rosette_legros    |
      | KULAS, HINTZ AND DOYLE         | http://kulashintzanddoyle.example/imelda_turcotte       |
      | MURPHY LLC                     | http://murphyllc.test/charley                           |
      | NIENOW AND SONS                | http://nienowandsons.test/vera                          |
      | REICHERT-MRAZ                  | http://reichert-mraz.test/clifford                      |
      | ROOB-WHITE                     | http://roob-white.example/tristan_turcotte              |
      | RUECKER AND SONS               | http://rueckerandsons.example/dana_kohler               |
      | SHIELDS-D'AMORE                | http://shields-damore.example/odell                     |
      | SMITH-DOYLE                    | http://smith-doyle.example/efren                        |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/nelle                 |
      | TOY-ROBERTS                    | http://toy-roberts.example/shon                         |
      | WILLMS-JACOBS                  | http://willms-jacobs.example/georgiann.luettgen         |
      | WOLFF, KRAJCIK AND PROSACCO    | http://wolffkrajcikandprosacco.test/taylor_johnson      |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page

  Scenario: The correct options are available
    Then I should see the following options for the lot:
      | BATZ-BROWN                     |
      | BLICK GROUP                    |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
      | JOHNSON LLC                    |
      | KUHLMAN, ORTIZ AND LOCKMAN     |
      | KULAS, HINTZ AND DOYLE         |
      | MURPHY LLC                     |
      | NIENOW AND SONS                |
      | REICHERT-MRAZ                  |
      | ROOB-WHITE                     |
      | RUECKER AND SONS               |
      | SHIELDS-D'AMORE                |
      | SMITH-DOYLE                    |
      | STARK, ADAMS AND KOZEY         |
      | TOY-ROBERTS                    |
      | WILLMS-JACOBS                  |
      | WOLFF, KRAJCIK AND PROSACCO    |

  Scenario: Service selection appears in basked
    Then the basket should say 'No suppliers selected'
    And the remove all link should not be visible
    When I check 'BATZ-BROWN'
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | BATZ-BROWN |
    When I check the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | BATZ-BROWN                     |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |

  Scenario: Changing the selection will change the basket
    When I check the following items:
      | BATZ-BROWN                     |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
      | KULAS, HINTZ AND DOYLE         |
    Then the basket should say '4 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | BATZ-BROWN                     |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
      | KULAS, HINTZ AND DOYLE         |
    When I deselect the following items:
      | BATZ-BROWN |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
      | KULAS, HINTZ AND DOYLE         |
    When I remove the following items from the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | KULAS, HINTZ AND DOYLE |
    When I click on 'Remove all'
    Then the basket should say 'No suppliers selected'

  Scenario: Go back from suppliers and change selection
    When I check the following items:
      | BATZ-BROWN                     |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And the following items should appear in the basket:
      | BATZ-BROWN                     |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
