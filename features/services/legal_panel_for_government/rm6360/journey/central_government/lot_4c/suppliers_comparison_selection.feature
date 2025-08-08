@skip-production
Feature: Legal Panel for Government - Non central governemnt - Lot 4c - Suppliers comparison selection

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 4c - International Investment Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    When I check the following items:
      | Domestic law of jurisdictions for trade |
      | International arbitral awards           |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | CRUICKSHANK, WISOKY AND HARBER  | http://cruickshankwisokyandharber.example/denisse             |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/freddie_oberbrunner          |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/marielle.hermiston            |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/herschel_armstrong |
      | LEHNER GROUP                    | http://lehnergroup.example/rueben.hane                        |
      | RUECKER AND SONS                | http://rueckerandsons.example/ricardo                         |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/daren.jones           |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/allen                           |
      | TOY-ROBERTS                     | http://toy-roberts.example/gregg_legros                       |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/juliette                           |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/dale                             |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page

  Scenario: The correct options are available
    Then I should see the following options for the lot:
      | CRUICKSHANK, WISOKY AND HARBER  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | HICKLE, CARTWRIGHT AND EMMERICH |
      | LEHNER GROUP                    |
      | RUECKER AND SONS                |
      | SCHMELER, KSHLERIN AND SHANAHAN |
      | SHIELDS-D'AMORE                 |
      | TOY-ROBERTS                     |
      | WILLMS-KOELPIN                  |
      | ZIEMANN-TROMP                   |

  Scenario: Service selection appears in basked
    Then the basket should say 'No suppliers selected'
    And the remove all link should not be visible
    When I check 'CRUICKSHANK, WISOKY AND HARBER'
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | CRUICKSHANK, WISOKY AND HARBER  |
    When I check the following items:
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | CRUICKSHANK, WISOKY AND HARBER  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |

  Scenario: Changing the selection will change the basket
    When I check the following items:
      | CRUICKSHANK, WISOKY AND HARBER  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | HICKLE, CARTWRIGHT AND EMMERICH |
    Then the basket should say '4 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | CRUICKSHANK, WISOKY AND HARBER  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | HICKLE, CARTWRIGHT AND EMMERICH |
    When I deselect the following items:
      | CRUICKSHANK, WISOKY AND HARBER  |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | HICKLE, CARTWRIGHT AND EMMERICH |
    When I remove the following items from the basket:
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | HICKLE, CARTWRIGHT AND EMMERICH |
    When I click on 'Remove all'
    Then the basket should say 'No suppliers selected'

  Scenario: Go back from suppliers and change selection
    When I check the following items:
      | CRUICKSHANK, WISOKY AND HARBER  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And the following items should appear in the basket:
      | CRUICKSHANK, WISOKY AND HARBER  |
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
