Feature: Legal Panel for Government - Central governemnt - Lot 4c - Suppliers comparison - Countries

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
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the countries for your requirement' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    When I check the following items:
      | Malta  |
      | Malawi |
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    When I check the following items:
      | Litigation and dispute resolution for trade investment disputes |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/freddie_oberbrunner          |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/marielle.hermiston            |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/herschel_armstrong |
      | LEHNER GROUP                    | http://lehnergroup.example/rueben.hane                        |
      | RUECKER AND SONS                | http://rueckerandsons.example/ricardo                         |
      | RUSSEL AND SONS                 | http://russelandsons.example/felica                           |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/daren.jones           |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/allen                           |
      | TOY-ROBERTS                     | http://toy-roberts.example/gregg_legros                       |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/juliette                           |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/dale                             |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | DECKOW, KIEHN AND ORN           |
      | FISHER-BASHIRIAN                |
      | HICKLE, CARTWRIGHT AND EMMERICH |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison

  Scenario: The rates table is displayed for comparison
    And I click on 'Malta'
    Then I should see the rates in the comparison table:
      | Supplier                        | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | DECKOW, KIEHN AND ORN           | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £175.00                                              |
      | FISHER-BASHIRIAN                | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £175.00                                              |
      | HICKLE, CARTWRIGHT AND EMMERICH | £270.00                                        | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     | £150.00        | £120.00                                                          | £180.00                                                | £150.00                                              |
    And I click on 'Malawi'
    Then I should see the rates in the comparison table:
      | Supplier                        | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | DECKOW, KIEHN AND ORN           | £270.00                                        | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     | £150.00        | £120.00                                                          | £180.00                                                | £150.00                                              |
      | FISHER-BASHIRIAN                | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £125.00                                              |
      | HICKLE, CARTWRIGHT AND EMMERICH | £270.00                                        | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     | £150.00        | £120.00                                                          | £180.00                                                | £150.00                                              |

  Scenario: Changing selection changes the results
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And I deselect all the items
    When I check the following items:
      | WILLMS-KOELPIN |
      | ZIEMANN-TROMP  |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '2' suppliers have been selected for comparison
    And I click on 'Malta'
    Then I should see the rates in the comparison table:
      | Supplier       | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | WILLMS-KOELPIN | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £175.00                                              |
      | ZIEMANN-TROMP  | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £125.00                                              |
    And I click on 'Malawi'
    Then I should see the rates in the comparison table:
      | Supplier       | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | WILLMS-KOELPIN | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £175.00                                              |
      | ZIEMANN-TROMP  | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £125.00                                              |

  Scenario: Back to results
    When I click on 'Back to results'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/freddie_oberbrunner          |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/marielle.hermiston            |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/herschel_armstrong |
      | LEHNER GROUP                    | http://lehnergroup.example/rueben.hane                        |
      | RUECKER AND SONS                | http://rueckerandsons.example/ricardo                         |
      | RUSSEL AND SONS                 | http://russelandsons.example/felica                           |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/daren.jones           |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/allen                           |
      | TOY-ROBERTS                     | http://toy-roberts.example/gregg_legros                       |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/juliette                           |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/dale                             |
