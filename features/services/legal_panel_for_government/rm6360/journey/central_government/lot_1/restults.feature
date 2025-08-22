@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 1 - Results

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

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Charities'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '17' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                   | http://armstronggroup.test/margene.lindgren           |
      | BATZ-BROWN                        | http://batz-brown.test/ellen.medhurst                 |
      | CRUICKSHANK GROUP                 | http://cruickshankgroup.test/nathaniel                |
      | CRUICKSHANK, WISOKY AND HARBER    | http://cruickshankwisokyandharber.example/kirby       |
      | DECKOW, ALTENWERTH AND HALEY      | http://deckowaltenwerthandhaley.test/eleni.legros     |
      | DONNELLY-RIPPIN                   | http://donnelly-rippin.example/britney.ruecker        |
      | DOUGLAS GROUP                     | http://douglasgroup.test/jenette_rolfson              |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN | http://kshlerinbrakusandchristiansen.test/eugenio     |
      | KUHLMAN, ORTIZ AND LOCKMAN        | http://kuhlmanortizandlockman.example/vernetta_crooks |
      | KULAS, HINTZ AND DOYLE            | http://kulashintzanddoyle.example/joie                |
      | MURPHY LLC                        | http://murphyllc.test/troy                            |
      | NIENOW AND SONS                   | http://nienowandsons.test/geoffrey.hegmann            |
      | ROOB-WHITE                        | http://roob-white.example/raymond                     |
      | SCHOWALTER GROUP                  | http://schowaltergroup.example/carlos.collier         |
      | SMITH-DOYLE                       | http://smith-doyle.example/clelia.kemmer              |
      | WILLMS-JACOBS                     | http://willms-jacobs.example/tatyana                  |
      | WOLFF, KRAJCIK AND PROSACCO       | http://wolffkrajcikandprosacco.test/buford            |

  Scenario: Going back from a supplier
    And I click on 'CRUICKSHANK GROUP'
    Then I am on the 'CRUICKSHANK GROUP' page
    And the sub title is 'Lot 1 - Core Legal Services'
    And I click on the 'Back' back link
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

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
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
