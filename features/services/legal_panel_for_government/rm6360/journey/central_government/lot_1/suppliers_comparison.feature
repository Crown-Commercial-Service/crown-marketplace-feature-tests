Feature: Legal Panel for Government - Non central governemnt - Lot 1 - Suppliers comparison

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Your account' page
    And I click on 'Search for suppliers'
    Then I am on the 'Do you work for central government or an arms length body?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Information about your requirements' page
    And I enter '10/2024' for the requirement 'start' date
    And I enter '10/2025' for the requirement 'end' date
    And I enter '123456' for the 'requirement estimated total value'
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 1 - Core Legal Services'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 1 - Core Legal Services'
    When I check the following items:
      | Assimilated Law       |
      | Aviation and Airports |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
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
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page

  Scenario: Suppliers reviewed - The rates table is displayed for comparison
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Then I should see the rates in the comparison table:
      | Supplier                       | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | CRUICKSHANK GROUP              | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | CRUICKSHANK, WISOKY AND HARBER | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | DECKOW, ALTENWERTH AND HALEY   | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |

  Scenario: Suppliers not reviewed - The rates table is displayed for comparison
    And I 'have not' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    Then I should see the rates in the comparison table:
      | Supplier                          | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | CRUICKSHANK GROUP                 | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | CRUICKSHANK, WISOKY AND HARBER    | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | DECKOW, ALTENWERTH AND HALEY SME  | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | DONNELLY-RIPPIN                   | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     |
      | DOUGLAS GROUP                     | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | KULAS, HINTZ AND DOYLE            | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | MURPHY LLC SME                    | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | NIENOW AND SONS SME               | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | ROOB-WHITE                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | SCHOWALTER GROUP                  | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | WOLFF, KRAJCIK AND PROSACCO       | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |

  Scenario: Suppliers reviewed - Changing selection changes the results
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
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

  Scenario: Suppliers reviewed - Back to results
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    When I click on 'Back to results'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
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

  Scenario: Suppliers reviewed - Going back from a supplier
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    And I click on 'CRUICKSHANK GROUP'
    Then I am on the 'CRUICKSHANK GROUP' page
    And the sub title is 'Lot 1 - Core Legal Services'
    And I click on the 'Back' back link
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Then I should see the rates in the comparison table:
      | Supplier                       | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | CRUICKSHANK GROUP              | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | CRUICKSHANK, WISOKY AND HARBER | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | DECKOW, ALTENWERTH AND HALEY   | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |

  Scenario: Suppliers not reviewed - Going back from a supplier
    And I 'have not' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I click on 'CRUICKSHANK GROUP'
    Then I am on the 'CRUICKSHANK GROUP' page
    And the sub title is 'Lot 1 - Core Legal Services'
    And I click on the 'Back' back link
    Then I am on the 'Compare supplier rates' page
    Then I should see the rates in the comparison table:
      | Supplier                          | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | CRUICKSHANK GROUP                 | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | CRUICKSHANK, WISOKY AND HARBER    | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | DECKOW, ALTENWERTH AND HALEY SME  | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | DONNELLY-RIPPIN                   | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     |
      | DOUGLAS GROUP                     | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | KULAS, HINTZ AND DOYLE            | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | MURPHY LLC SME                    | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | NIENOW AND SONS SME               | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | ROOB-WHITE                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | SCHOWALTER GROUP                  | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | WOLFF, KRAJCIK AND PROSACCO       | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |

  @file-download
  Scenario: Suppliers reviewed - Download the supplier spreadsheet
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | CRUICKSHANK GROUP              |
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, ALTENWERTH AND HALEY   |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Given I click on 'Download the rates for comparison'
    Then the file 'Rates of Legal Panel for Government Suppliers.xlsx' is downloaded with the 'xlsx' extension

  @file-download
  Scenario: Suppliers not reviewed - Download the supplier spreadsheet
    And I 'have not' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    Given I click on 'Download the rates for comparison'
    Then the file 'Rates of Legal Panel for Government Suppliers.xlsx' is downloaded with the 'xlsx' extension
