Feature: Legal Panel for Government - Non central governemnt - Lot 4b - Suppliers comparison - Countries

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
    And I select 'Lot 4b - International Trade Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the countries for your requirement' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Algeria        |
      | Cayman Islands |
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Wider trading arrangements |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider          |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile   |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual        |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein   |
      | JOHNSON LLC                    | http://johnsonllc.example/rima                 |
      | PARKER, DIETRICH AND TREMBLAY  | http://parkerdietrichandtremblay.example/leana |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton     |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah            |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier   |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie        |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin       |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DECKOW, KIEHN AND ORN          |
      | FISHER-BASHIRIAN               |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    And I click on 'Algeria'
    Then I should see the rates in the comparison table:
      | Supplier                       | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | COLLIER, AUFDERHAR AND VOLKMAN | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £125.00                                              |
      | DECKOW, KIEHN AND ORN          | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £175.00                                              |
      | FISHER-BASHIRIAN               | £270.00                                        | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     | £150.00        | £120.00                                                          | £180.00                                                | £150.00                                              |
    And I click on 'Cayman Islands'
    Then I should see the rates in the comparison table:
      | Supplier                       | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | COLLIER, AUFDERHAR AND VOLKMAN | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £125.00                                              |
      | DECKOW, KIEHN AND ORN          | £270.00                                        | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     | £150.00        | £120.00                                                          | £180.00                                                | £150.00                                              |
      | FISHER-BASHIRIAN               | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £125.00                                              |
