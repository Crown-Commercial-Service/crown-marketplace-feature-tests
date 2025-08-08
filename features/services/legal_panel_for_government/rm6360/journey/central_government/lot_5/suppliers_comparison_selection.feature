@skip-production
Feature: Legal Panel for Government - Non central governemnt - Lot 5 - Suppliers comparison selection

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 5 - Rail Legal Services'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 5 - Rail Legal Services'
    When I check the following items:
      | Pensions law  |
      | Planning law  |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/alane.ratke      |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/reyna                  |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/armando      |
      | KAUTZER, PFEFFER AND SCHUMM     | http://kautzerpfefferandschumm.test/deandrea            |
      | LEHNER GROUP                    | http://lehnergroup.example/erwin                        |
      | ROMAGUERA, SCHULIST AND GRAHAM  | http://romagueraschulistandgraham.test/alejandrina      |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/kurtis_mayer    |
      | SWANIAWSKI, PREDOVIC AND GRANT  | http://swaniawskipredovicandgrant.example/harold.crooks |
      | SWIFT, MANTE AND WUCKERT        | http://swiftmanteandwuckert.test/caryn                  |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/inga_dubuque                 |
      | WINTHEISER, WINDLER AND KULAS   | http://wintheiserwindlerandkulas.example/percy          |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/sammie_denesik             |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page

  Scenario: The correct options are available
    Then I should see the following options for the lot:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
      | KAUTZER, PFEFFER AND SCHUMM     |
      | LEHNER GROUP                    |
      | ROMAGUERA, SCHULIST AND GRAHAM  |
      | SCHMELER, KSHLERIN AND SHANAHAN |
      | SWANIAWSKI, PREDOVIC AND GRANT  |
      | SWIFT, MANTE AND WUCKERT        |
      | WILLMS-KOELPIN                  |
      | WINTHEISER, WINDLER AND KULAS   |
      | ZIEMANN-TROMP                   |

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
      | HICKLE, CARTWRIGHT AND EMMERICH |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |

  Scenario: Changing the selection will change the basket
    When I check the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
      | KAUTZER, PFEFFER AND SCHUMM     |
    Then the basket should say '4 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
      | KAUTZER, PFEFFER AND SCHUMM     |
    When I deselect the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
      | KAUTZER, PFEFFER AND SCHUMM     |
    When I remove the following items from the basket:
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | KAUTZER, PFEFFER AND SCHUMM     |
    When I click on 'Remove all'
    Then the basket should say 'No suppliers selected'

  Scenario: Go back from suppliers and change selection
    When I check the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And the following items should appear in the basket:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
