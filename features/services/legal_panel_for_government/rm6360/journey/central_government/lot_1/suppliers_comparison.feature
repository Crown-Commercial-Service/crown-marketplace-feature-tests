@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 1 - Suppliers comparison

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
    When I check the following items:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison

  Scenario: The rates table is displayed for comparison
    Then I should see the rates in the comparison table:
      | Supplier                       | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | CRUICKSHANK GROUP              | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | CRUICKSHANK, WISOKY AND HARBER | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | DECKOW, ALTENWERTH AND HALEY   | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |

  Scenario: Changing selection changes the results
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And I deselect all the items
    When I check the following items:
      | NIENOW AND SONS  |
      | SCHOWALTER GROUP |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '2' suppliers have been selected for comparison
    Then I should see the rates in the comparison table:
      | Supplier         | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | NIENOW AND SONS  | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | SCHOWALTER GROUP | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |

  Scenario: Back to results
    When I click on 'Back to results'
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
