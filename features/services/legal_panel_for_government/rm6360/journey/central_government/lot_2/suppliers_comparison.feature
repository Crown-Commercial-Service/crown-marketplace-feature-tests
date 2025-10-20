Feature: Legal Panel for Government - Non central governemnt - Lot 2 - Suppliers comparison

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
    And I select 'Lot 2 - Major Projects and Complex Advice'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 2 - Major Projects and Complex Advice'
    When I check the following items:
      | Competition Law |
      | Contracts       |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '18' suppliers can provide legal specialisms for government
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
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | BATZ-BROWN                     |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | DOUGLAS GROUP                  |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Then I should see the rates in the comparison table:
      | Supplier                       | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | BATZ-BROWN                     | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     |
      | COLLIER, AUFDERHAR AND VOLKMAN | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
      | DOUGLAS GROUP                  | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |
