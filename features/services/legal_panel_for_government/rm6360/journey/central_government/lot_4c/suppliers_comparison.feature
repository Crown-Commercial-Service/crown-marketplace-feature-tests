Feature: Legal Panel for Government - Non central governemnt - Lot 4c - Suppliers comparison

  Scenario: Suppliers reviewed - The rates table is displayed for comparison
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
    And I select 'Lot 4c - International Investment Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    When I check the following items:
      | Domestic law of jurisdictions for trade |
      | International arbitral awards           |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | CRUICKSHANK, WISOKY AND HARBER  | http://cruickshankwisokyandharber.example/denisse             |
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
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | CRUICKSHANK, WISOKY AND HARBER |
      | DECKOW, KIEHN AND ORN          |
      | FISHER-BASHIRIAN               |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Then I should see the rates in the comparison table:
      | Supplier                       | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Legal Project Managers | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | CRUICKSHANK, WISOKY AND HARBER | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £253.75                | £210.00        | £175.00                                                          |                                                        |                                                      |
      | DECKOW, KIEHN AND ORN          | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £253.75                | £175.00        | £140.00                                                          | £210.00                                                | £175.00                                              |
      | FISHER-BASHIRIAN               | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £181.25                | £125.00        | £100.00                                                          | £150.00                                                | £125.00                                              |
